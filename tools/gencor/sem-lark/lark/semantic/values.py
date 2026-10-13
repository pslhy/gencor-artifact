"""Candidate-based semantic attribute values for LR parsing."""

from dataclasses import dataclass, field
from types import MappingProxyType
from typing import Any, Dict, Iterable, List, Optional, Sequence, Set, Tuple, Union

from ..grammar import Rule
from ..parsers.grammar_analysis import RulePtr, State
from .utils import AccumulateConfig, normalize_accumulate_attrs


@dataclass(frozen=True, eq=False)
class RulePtrKey:
    """A dotted rule -- the formalism's ``[A -> alpha . beta]`` (popl27 attrparse.tex).

    Stable identity for one grammar rule plus a dot position; this is exactly a
    dotted rule of the POPL27 attribute-LR model. ``ptr`` is the dot position. A
    parent source uses the dotted form where the dot is placed before the selected
    RHS symbol, such as ``B -> * C`` (the dotted rule ``pi`` witnessing a parent in
    ``Parents(I, X)``).

    RulePtrKey is also used directly by AttributeFlow while walking parser-state
    contexts. ParentSource wraps a RulePtrKey only when that dotted position is
    attached to an attribute candidate as provenance.

    :param rule: Lark rule object being evaluated.
    :param ptr: Dot position in ``rule.expansion``.
    """

    rule: Rule
    ptr: int

    def __eq__(self, other) -> bool:
        if not isinstance(other, RulePtrKey):
            return NotImplemented
        return self.rule is other.rule and self.ptr == other.ptr

    def __hash__(self) -> int:
        return hash((id(self.rule), self.ptr))

    @classmethod
    def from_ruleptr(cls, ruleptr: RulePtr) -> "RulePtrKey":
        return cls(ruleptr.rule, ruleptr.index)

    def next_symbol(self):
        if self.ptr >= len(self.rule.expansion):
            return None
        return self.rule.expansion[self.ptr]


class ParentSource:
    """A candidate's immediate parent dotted rule ``pi`` (popl27 attrparse.tex).

    In the formalism a candidate carries a parent chain ``Lambda = [pi_1, ..., pi_d]``;
    this object is the immediate parent ``pi = last(Lambda)``, i.e. the dotted rule
    ``[X0 -> alpha . X beta]`` witnessing where this occurrence sits in its parent.
    The full chain ``Lambda`` is reconstructed by walking the cons-cell
    ``CandidateSet.parent_links`` from this candidate upward (see ``parent_links``).
    Plain ``ParentSource`` is a dotted-rule occurrence; the subclasses
    ``RootSource`` / ``UnanchoredSource`` are the base cases of the empty chain
    ``.`` (root / not-yet-anchored), and ``IncompatibleSource`` marks a merge that
    refuted the lineage. Parser-state context traversal uses ``RulePtrKey``
    directly; ParentSource is for candidate provenance.

    :param ruleptr: Dotted parent rule ``pi`` represented by this source.
    """

    __slots__ = ("ruleptr", "_identity_key")

    def __init__(self, ruleptr: RulePtrKey) -> None:
        self.ruleptr = ruleptr
        self._identity_key = ("source", id(ruleptr.rule), ruleptr.ptr)

    def identity_key(self) -> Tuple[Any, ...]:
        """Return the source portion of a candidate identity key.

        This key is embedded in ``Candidate.identity_key()`` and then
        used by candidate dedupe, relation maps, and accumulated projection
        dedupe.
        """

        return self._identity_key

    def group_key(self) -> Optional[Tuple[Any, ...]]:
        """Return the source grouping key used during candidate merging.

        ``CandidateSet`` uses this key to find candidates that can merge
        by source. Unanchored sources return ``None`` so they can be considered
        against any concrete source.
        """

        if self.is_unanchored():
            return None
        return self._identity_key

    def is_unanchored(self) -> bool:
        return False

    def is_incompatible(self) -> bool:
        return False

    @staticmethod
    def merge(left: "ParentSource", right: "ParentSource") -> "ParentSource":
        if left is right:
            return left
        if left.is_unanchored():
            return right
        if right.is_unanchored():
            return left
        if type(left) is type(right) and left.identity_key() == right.identity_key():
            return left
        return INCOMPATIBLE_SOURCE

    def __eq__(self, other) -> bool:
        if not isinstance(other, ParentSource):
            return NotImplemented
        return type(self) is type(other) and self.identity_key() == other.identity_key()

    def __hash__(self) -> int:
        return hash((type(self), self.identity_key()))


@dataclass(frozen=True)
class RootSource(ParentSource):
    """Source for candidates whose parent is the parser root.

    :meth:`identity_key` returns the stable relation-map key for this source.
    """

    def __init__(self) -> None:
        pass

    def identity_key(self) -> Tuple[str]:
        """Return the source identity used in candidate and relation keys."""

        return ("root",)

    def __eq__(self, other) -> bool:
        return isinstance(other, RootSource)

    def __hash__(self) -> int:
        return hash(RootSource)


@dataclass(frozen=True)
class UnanchoredSource(ParentSource):
    """Source for candidates not yet tied to a dotted-rule occurrence.

    Terminal hooks produce unanchored candidates first. They become anchored
    when merged with a predicted candidate.
    """

    def __init__(self) -> None:
        pass

    def identity_key(self) -> Tuple[str]:
        """Return the source identity used before a candidate is anchored."""

        return ("unanchored",)

    def is_unanchored(self) -> bool:
        return True

    def __eq__(self, other) -> bool:
        return isinstance(other, UnanchoredSource)

    def __hash__(self) -> int:
        return hash(UnanchoredSource)


@dataclass(frozen=True)
class IncompatibleSource(ParentSource):
    """Sentinel source returned when two concrete sources cannot be merged."""

    def __init__(self) -> None:
        pass

    def identity_key(self) -> Tuple[str]:
        """Return the sentinel identity used only for failed source merges."""

        return ("incompatible",)

    def is_incompatible(self) -> bool:
        return True

    def __eq__(self, other) -> bool:
        return isinstance(other, IncompatibleSource)

    def __hash__(self) -> int:
        return hash(IncompatibleSource)


ROOT_SOURCE = RootSource()
UNANCHORED_SOURCE = UnanchoredSource()
INCOMPATIBLE_SOURCE = IncompatibleSource()

@dataclass(frozen=True)
class AttrRecord:
    """An attribute record -- the formalism's ``iota`` or ``sigma`` (popl27 attrparse.tex).

    Immutable map from attribute names to values. A candidate's inherited record
    ``iota`` (mapping ``a in Inh(X)``) and synthesized record ``sigma`` (mapping
    ``a in Syn(X)``, or bottom until reduction) are both ``AttrRecord`` values;
    see ``Candidate.inh`` / ``Candidate.syn``.

    :param items: Attribute name/value pairs in stable insertion order.
    :ivar key: Cached normalized key used for candidate and projection
        identity.
    """

    items: Tuple[Tuple[str, Any], ...] = ()
    key: Tuple[Tuple[str, Tuple[Any, ...]], ...] = field(init=False, compare=False)

    @staticmethod
    def value_key(value: Any) -> Tuple[Any, ...]:
        """Normalize an attribute value into a hashable record-key component.

        ``AttrRecord.key`` uses these components so records can participate in
        candidate identity, relation-map lookup, and projection dedupe even when
        attribute values are containers.
        """

        if isinstance(value, tuple):
            return ("tuple", tuple(AttrRecord.value_key(item) for item in value))
        if isinstance(value, list):
            return ("list", tuple(AttrRecord.value_key(item) for item in value))
        if isinstance(value, dict):
            return (
                "dict",
                tuple(
                    sorted(
                        (AttrRecord.value_key(key), AttrRecord.value_key(item))
                        for key, item in value.items()
                    )
                ),
            )
        if isinstance(value, set):
            return ("set", tuple(sorted(AttrRecord.value_key(item) for item in value)))
        try:
            hash(value)
        except TypeError:
            return ("id", id(value))
        return ("value", type(value), value)

    def __post_init__(self) -> None:
        # frozen=True prevents normal assignment in __post_init__.
        object.__setattr__(
            self,
            "key",
            tuple((name, self.value_key(value)) for name, value in self.items),
        )

    @classmethod
    def from_mapping(cls, values: Optional[Dict[str, Any]]=None) -> "AttrRecord":
        return cls(tuple((name, value) for name, value in (values or {}).items()))

    def to_dict(self) -> Dict[str, Any]:
        return dict(self.items)

    def __getattr__(self, name: str) -> Any:
        """Read an attribute value with dot syntax, e.g. ``candidate.inh.ctx``."""

        for item_name, value in self.items:
            if item_name == name:
                return value
        raise AttributeError("Missing semantic attribute %r" % name)

    def get(self, name: str, default: Any=None) -> Any:
        for item_name, value in self.items:
            if item_name == name:
                return value
        return default

    def has(self, name: str) -> bool:
        for item_name, _value in self.items:
            if item_name == name:
                return True
        return False

    def with_value(self, name: str, value: Any) -> "AttrRecord":
        result = []
        replaced = False
        for item_name, item_value in self.items:
            if item_name == name:
                result.append((name, value))
                replaced = True
            else:
                result.append((item_name, item_value))
        if not replaced:
            result.append((name, value))
        return AttrRecord(tuple(result))

    def without_unselected(
        self,
        kind: str,
        tracked_attrs: Optional[Set[str]],
    ) -> "AttrRecord":
        if tracked_attrs is None:
            return self
        return AttrRecord(
            tuple(
                (name, value)
                for name, value in self.items
                if "%s.%s" % (kind, name) in tracked_attrs
            )
        )

    def merge(self, other: "AttrRecord") -> Optional["AttrRecord"]:
        result = self
        for name, value in other.items:
            if result.has(name) and result.get(name) != value:
                return None
            result = result.with_value(name, value)
        return result

    def agrees_with(self, other: "AttrRecord") -> bool:
        for name, value in self.items:
            if other.has(name) and other.get(name) != value:
                return False
        return True

    def has_values(self) -> bool:
        return bool(self.items)


EMPTY_RECORD = AttrRecord()

# Shared immutable empty relation map. Returned instead of allocating a fresh
# ``{}`` whenever a candidate set has no parent/merged-from edges (the common
# case: ``merged_from_links`` is empty on the closure/transition hot path).
EMPTY_RELATION: Dict[Tuple[Any, ...], Tuple[Tuple[Any, ...], ...]] = MappingProxyType({})


@dataclass(frozen=True)
class Candidate:
    """A tagged attribute candidate ``(iota, sigma, Lambda)`` (popl27 attrparse.tex).

    The formalism's candidate is the triple ``(iota, sigma, Lambda)``: an inherited
    record, a synthesized record, and a parent chain. Here it is stored as
    ``(inh, syn, source)`` -- ``inh`` is ``iota``, ``syn`` is ``sigma``, and
    ``source`` is the immediate parent dotted rule ``pi = last(Lambda)``. The full
    chain ``Lambda`` is NOT stored on the candidate; it is the cons-cell path
    reached by walking ``CandidateSet.parent_links`` from this candidate upward
    (multiple candidates arise only from parent ambiguity, narrowed at Reduce/Prune).

    :param inh: Inherited record ``iota`` (maps ``a in Inh(X)``).
    :param syn: Synthesized record ``sigma`` (maps ``a in Syn(X)``; empty until reduced).
    :param source: Immediate parent dotted rule ``pi`` (or root/unanchored base of ``Lambda``).
    """

    inh: AttrRecord = EMPTY_RECORD
    syn: AttrRecord = EMPTY_RECORD
    source: ParentSource = UNANCHORED_SOURCE
    _identity_key: Tuple[Any, ...] = field(init=False, repr=False, compare=False)

    def __post_init__(self) -> None:
        # Invariant: within one source, the inherited record determines the
        # synthesized record. Candidate identity therefore omits ``syn``.
        object.__setattr__(
            self,
            "_identity_key",
            (self.inh.key, self.source.identity_key()),
        )

    @classmethod
    def empty(cls, source: ParentSource=UNANCHORED_SOURCE) -> "Candidate":
        return cls(EMPTY_RECORD, EMPTY_RECORD, source)

    def with_source(self, source: ParentSource) -> "Candidate":
        return Candidate(self.inh, self.syn, source)

    def identity_key(self) -> Tuple[Any, ...]:
        """Return the identity key for this candidate row.

        ``CandidateSet`` uses this key to dedupe concrete candidate rows.
        The same key is also embedded in accumulated projection identities.
        ``syn`` is intentionally omitted by the candidate invariant: for the
        same inherited record and source, synthesized attrs cannot differ.
        """

        return self._identity_key

    def relation_key(self) -> Tuple[Any, ...]:
        """Return the relation-map key for this candidate."""

        return self._identity_key

    def merge(self, other: "Candidate") -> Optional["Candidate"]:
        source = ParentSource.merge(self.source, other.source)
        if source.is_incompatible():
            return None
        inh = self.inh.merge(other.inh)
        if inh is None:
            return None
        syn = self.syn.merge(other.syn)
        if syn is None:
            return None
        return Candidate(inh, syn, source)

    def is_compatible_with(self, other: "Candidate") -> bool:
        source = ParentSource.merge(self.source, other.source)
        if source.is_incompatible():
            return False
        if not self.inh.agrees_with(other.inh):
            return False
        if not self.syn.agrees_with(other.syn):
            return False
        return True

    def only_inh(self) -> "Candidate":
        return Candidate(self.inh, EMPTY_RECORD, self.source)

    def has_values(self) -> bool:
        return self.inh.has_values() or self.syn.has_values()


class CandidateSet:
    """A stack element's candidate set ``cands`` (popl27 attrparse.tex).

    The ``cands`` of a stack element ``<I | cands>``: a collection of candidates
    plus two relation maps keyed by candidate identity.

    ``parent_links`` is the cons-cell representation of the parent chains
    ``Lambda``: it maps a child candidate to its immediate parent candidate(s)
    (one step of ``Lambda``), so a full chain ``[pi_1, ..., pi_d]`` is the path
    walked from a candidate through ``parent_links``. The formalism footnote calls
    this a "cons-cell / integer id referencing the parent's chain" -- extending a
    chain is O(1) and never materialises a full chain (the perf constraint). The
    ``Lambda <= Lambda*`` prefix test of Prune is realised over this edge relation
    (in vertex space; see ``AttributeFlow._prune``).

    ``merged_from_links`` maps a pushed stack-entry candidate to the terminal or
    reduction candidate that was merged into it. During ``feed_token()``, this
    lets ``AccumulatedAttrs`` keep tracking attrs after reduced child entries
    leave the parser stack.

    Example reduce view:
        before: ``[..., NAME]`` with a tracked ``NAME`` projection
        reduce ``name -> NAME``: trace says the reduction result used ``NAME``
        after: ``[..., name]``: link says stack ``name`` contains that result
        result: the ``NAME`` projection can move to stack ``name``

    :param candidates: Existing attribute candidates to store directly.
    :param parent_links: Optional child-candidate to parent-candidate relation.
    :param merged_from_links: Optional relation from pushed stack-entry
        candidates to the freshly computed terminal/reduction candidates merged
        into them.
    """

    def __init__(
        self,
        candidates: Optional[Iterable[Candidate]]=None,
        parent_links: Optional[Dict[Tuple[Any, ...], Iterable[Tuple[Any, ...]]]]=None,
        merged_from_links: Optional[Dict[Tuple[Any, ...], Iterable[Tuple[Any, ...]]]]=None,
    ) -> None:
        self._replace_candidates(
            tuple(candidates) if candidates is not None else tuple(),
            parent_links=parent_links,
            merged_from_links=merged_from_links,
        )

    @staticmethod
    def _relation_key(mapping: Dict[Tuple[Any, ...], Tuple[Tuple[Any, ...], ...]]) -> Tuple[Any, ...]:
        """Return a stable key for one relation map.

        ``CandidateSet._cache_key`` includes this value so projection
        dedupe and future local memoization can distinguish equal candidate rows
        with different parent/merged-from relations.
        """

        return tuple(mapping.items())

    @staticmethod
    def _add_relation(
        mapping: Dict[Tuple[Any, ...], List[Tuple[Any, ...]]],
        owner_key: Tuple[Any, ...],
        related_key: Tuple[Any, ...],
    ) -> None:
        # Order-preserving O(1) dedup: an insertion-ordered dict used as a set,
        # replacing a list + O(n) `in` scan (was O(edges**2) per relation map;
        # edges up to ~200). Downstream `_normalize_relation` / `tuple(values)`
        # iterate keys, so the deduped result and its order are unchanged.
        mapping.setdefault(owner_key, {})[related_key] = None

    @staticmethod
    def _normalize_relation(
        mapping: Optional[Dict[Tuple[Any, ...], Iterable[Tuple[Any, ...]]]],
    ) -> Dict[Tuple[Any, ...], Tuple[Tuple[Any, ...], ...]]:
        if not mapping:
            return {}
        # Relation maps are built only by _add_relation (insertion-ordered
        # dict-set) or arrive as already-normalized tuples, so their values are
        # de-duplicated upstream; a second seen-set pass is redundant. tuple()
        # over a dict yields its keys in insertion order, preserving the result.
        result: Dict[Tuple[Any, ...], Tuple[Tuple[Any, ...], ...]] = {}
        for key, values in mapping.items():
            row = tuple(values)
            if row:
                result[key] = row
        return result

    @staticmethod
    def _relations_for(
        mapping: Dict[Tuple[Any, ...], Tuple[Tuple[Any, ...], ...]],
        candidate: Candidate,
    ) -> Tuple[Tuple[Any, ...], ...]:
        """Look up relation keys attached to one candidate relation key.

        This reads ``parent_links`` and ``merged_from_links`` maps, both of which
        are indexed by ``Candidate.relation_key()``.
        """

        return mapping.get(candidate.relation_key(), tuple())

    @staticmethod
    def _dedupe(candidates: Sequence[Candidate]) -> Tuple[Candidate, ...]:
        """Remove duplicate candidate rows by ``Candidate.identity_key``."""

        result: List[Candidate] = []
        seen = set()
        for candidate in candidates:
            key = candidate.identity_key()
            if key in seen:
                continue
            seen.add(key)
            result.append(candidate)
        return tuple(result)

    def _replace_candidates(
        self,
        candidates: Sequence[Candidate],
        *,
        parent_links: Optional[Dict[Tuple[Any, ...], Iterable[Tuple[Any, ...]]]]=None,
        merged_from_links: Optional[Dict[Tuple[Any, ...], Iterable[Tuple[Any, ...]]]]=None,
    ) -> None:
        self.candidates = self._dedupe(candidates)
        candidate_keys = {candidate.relation_key() for candidate in self.candidates}
        parent_links = parent_links if parent_links is not None else getattr(self, "parent_links", {})
        merged_from_links = merged_from_links if merged_from_links is not None else getattr(self, "merged_from_links", {})
        self.parent_links = self._normalize_for_candidates(parent_links, candidate_keys)
        self.merged_from_links = self._normalize_for_candidates(merged_from_links, candidate_keys)
        # Computed lazily in cache_key(); only the accumulated-projection path
        # reads it, so most intermediate sets never materialize it.
        self._cache_key = None

    @staticmethod
    def _filter_normalized_relation(
        mapping: Dict[Tuple[Any, ...], Tuple[Tuple[Any, ...], ...]],
        candidate_keys: Set[Tuple[Any, ...]],
    ) -> Dict[Tuple[Any, ...], Tuple[Tuple[Any, ...], ...]]:
        if not mapping:
            return EMPTY_RELATION
        if all(key in candidate_keys for key in mapping):
            return mapping
        filtered = {
            key: values
            for key, values in mapping.items()
            if key in candidate_keys
        }
        return filtered if filtered else EMPTY_RELATION

    @classmethod
    def _normalize_for_candidates(
        cls,
        mapping: Optional[Dict[Tuple[Any, ...], Iterable[Tuple[Any, ...]]]],
        candidate_keys: Set[Tuple[Any, ...]],
    ) -> Dict[Tuple[Any, ...], Tuple[Tuple[Any, ...], ...]]:
        """Normalize a relation map and drop keys with no surviving candidate.

        Returns the shared immutable empty mapping when nothing is kept, so the
        common empty-``merged_from_links`` case allocates and normalizes nothing.
        """

        if not mapping:
            return EMPTY_RELATION
        normalized = {
            key: values
            for key, values in cls._normalize_relation(mapping).items()
            if key in candidate_keys
        }
        return normalized if normalized else EMPTY_RELATION

    @classmethod
    def _from_normalized_parts(
        cls,
        candidates: Sequence[Candidate],
        parent_links: Dict[Tuple[Any, ...], Tuple[Tuple[Any, ...], ...]],
        merged_from_links: Dict[Tuple[Any, ...], Tuple[Tuple[Any, ...], ...]],
    ) -> "CandidateSet":
        """Build from already-normalized relation maps.

        :param candidates: Candidate rows to store.
        :param parent_links: Normalized parent relation map.
        :param merged_from_links: Normalized merge relation map.
        """

        result = cls.__new__(cls)
        result.candidates = cls._dedupe(candidates)
        candidate_keys = {candidate.relation_key() for candidate in result.candidates}
        result.parent_links = cls._filter_normalized_relation(parent_links, candidate_keys)
        result.merged_from_links = cls._filter_normalized_relation(merged_from_links, candidate_keys)
        result._cache_key = None
        return result

    @classmethod
    def from_candidates_with_relations(
        cls,
        candidates: Sequence[Candidate],
        relation_source: "CandidateSet",
    ) -> "CandidateSet":
        """Build candidates while reusing an existing set's relation maps.

        This is used when candidate relation keys are preserved but non-key
        fields, such as synthesized attrs, may have changed.

        :param candidates: Candidate rows to store.
        :param relation_source: Existing candidate set whose normalized relation
            maps should be reused.
        """

        return cls._from_normalized_parts(
            tuple(candidates),
            relation_source.parent_links,
            relation_source.merged_from_links,
        )

    def copy(self) -> "CandidateSet":
        result = CandidateSet.__new__(CandidateSet)
        result.candidates = self.candidates
        result.parent_links = self.parent_links
        result.merged_from_links = self.merged_from_links
        result._cache_key = self._cache_key
        return result

    def _adopt_from(self, other: "CandidateSet") -> None:
        """Take over a freshly built set's already-normalized state.

        ``other`` comes from ``_set_from_entries``: its candidates are deduped
        and its relation maps are normalized and filtered to those candidates, so
        routing it back through ``_replace_candidates`` would repeat that work.
        Sharing the references is safe because candidate sets are
        rebuilt-immutable (every mutation reassigns these fields, never mutates
        the shared tuple/mapping in place).
        """

        self.candidates = other.candidates
        self.parent_links = other.parent_links
        self.merged_from_links = other.merged_from_links
        self._cache_key = other._cache_key

    def cache_key(self) -> Tuple[Any, ...]:
        """Return the snapshot key for this candidate set.

        ``AccumulatedProjection.identity_key()`` embeds this key so projection
        dedupe preserves candidate rows and relation maps together. Computed
        lazily on first read because most intermediate sets never need it.
        """

        cache_key = self._cache_key
        if cache_key is None:
            cache_key = (
                tuple(candidate.identity_key() for candidate in self.candidates),
                ("parents", self._relation_key(self.parent_links)),
                ("merged_from", self._relation_key(self.merged_from_links)),
            )
            self._cache_key = cache_key
        return cache_key

    @staticmethod
    def candidate_key(candidate: Candidate) -> Tuple[Any, ...]:
        """Return the relation-map key for a candidate.

        Kept as a public convenience for callers that build ``parent_links`` or
        ``merged_from_links`` manually.
        """

        return candidate.relation_key()

    @classmethod
    def from_entries(
        cls,
        entries: Sequence[Tuple[Candidate, Sequence[Tuple[Any, ...]], Sequence[Tuple[Any, ...]]]],
    ) -> "CandidateSet":
        """Build a set from candidates plus relation keys.

        Each entry is ``(candidate, parent_keys, merged_from_keys)``. This is
        the common path after a semantic function has run, because the returned
        candidate row and its relation rows must be deduplicated together.

        :param entries: Candidate rows with parent and merged-from relation
            keys.
        """

        normalized_entries = [
            (candidate, tuple(parent_links), tuple(merged_from_links))
            for candidate, parent_links, merged_from_links in entries
        ]
        return cls._set_from_entries(normalized_entries)

    def parent_keys_for(self, candidate: Candidate) -> Tuple[Tuple[Any, ...], ...]:
        """Return parent candidate keys that can produce ``candidate``.

        :param candidate: Candidate whose parent relation should be read.
        """

        return self._relations_for(self.parent_links, candidate)

    def merged_from_keys_for(self, candidate: Candidate) -> Tuple[Tuple[Any, ...], ...]:
        """Return input candidate keys merged into ``candidate``.

        :param candidate: Candidate stored on a parser stack entry after a
            terminal or reduction output was merged into it.
        """

        return self._relations_for(self.merged_from_links, candidate)

    def is_empty(self) -> bool:
        return not self.candidates

    def has_values(self) -> bool:
        return any(candidate.has_values() for candidate in self.candidates)

    def candidates_or_empty(self, source: ParentSource=UNANCHORED_SOURCE) -> Tuple[Candidate, ...]:
        if self.candidates:
            return self.candidates
        return (Candidate.empty(source),)

    def merge(self, other: "CandidateSet") -> bool:
        return self._merge_with(other)

    @staticmethod
    def _set_from_entries(
        entries: Sequence[Tuple[Candidate, Tuple[Tuple[Any, ...], ...], Tuple[Tuple[Any, ...], ...]]],
    ) -> "CandidateSet":
        """Deduplicate candidate rows while preserving relation alternatives.

        Candidate identity is based on inherited records plus immediate source.
        Synthesized writes during reduction therefore do not require relation
        rows to be re-keyed.

        :param entries: Normalized ``(candidate, parent_keys,
            merged_from_keys)`` rows.
        """

        candidates = []
        parent_links: Dict[Tuple[Any, ...], List[Tuple[Any, ...]]] = {}
        merged_from_links: Dict[Tuple[Any, ...], List[Tuple[Any, ...]]] = {}
        for candidate, parents, merged_from in entries:
            candidates.append(candidate)
            key = candidate.relation_key()
            for parent in parents:
                CandidateSet._add_relation(parent_links, key, parent)
            for merged_from_key in merged_from:
                CandidateSet._add_relation(merged_from_links, key, merged_from_key)
        return CandidateSet(
            candidates=candidates,
            parent_links=parent_links,
            merged_from_links=merged_from_links,
        )

    def _merge_with(self, other: "CandidateSet") -> bool:
        if other.is_empty():
            return False

        incoming = list(other.candidates)

        if self.is_empty():
            self._replace_candidates(
                tuple(incoming),
                parent_links=other.parent_links,
                merged_from_links=other.merged_from_links,
            )
            return bool(self.candidates)

        # Fast path: if every incoming candidate is already present in self with
        # its relations subsumed, the merge changes nothing. Detecting that from
        # the (typically ~1-candidate) incoming set is far cheaper than the
        # O(self) match loop + full _set_from_entries rebuild -- a large share of
        # merges (measured ~44%) are such no-ops. Falls through otherwise.
        self_by_key = {candidate.relation_key(): candidate for candidate in self.candidates}
        is_noop = True
        for source in incoming:
            existing = self_by_key.get(source.relation_key())
            if existing is None or not existing.is_compatible_with(source):
                is_noop = False
                break
            incoming_parents = self._relations_for(other.parent_links, source)
            if incoming_parents and not set(incoming_parents).issubset(
                self._relations_for(self.parent_links, existing)
            ):
                is_noop = False
                break
            incoming_merged = self._relations_for(other.merged_from_links, source)
            if incoming_merged and not set(incoming_merged).issubset(
                self._relations_for(self.merged_from_links, existing)
            ):
                is_noop = False
                break
        if is_noop:
            return False

        result = [
            (
                candidate,
                self._relations_for(self.parent_links, candidate),
                self._relations_for(self.merged_from_links, candidate),
            )
            for candidate in self.candidates
        ]
        by_source: Dict[Optional[Tuple[Any, ...]], List[int]] = {}
        unanchored_indices: List[int] = []
        for index, (candidate, _parents, _merged_from) in enumerate(result):
            source_key = candidate.source.group_key()
            by_source.setdefault(source_key, []).append(index)
            if candidate.source.is_unanchored():
                unanchored_indices.append(index)

        for source in incoming:
            matched = False
            source_parents = self._relations_for(other.parent_links, source)
            source_merged_from = self._relations_for(other.merged_from_links, source)
            if source.source.is_unanchored():
                candidate_indices = range(len(result))
            else:
                candidate_indices = tuple(unanchored_indices) + tuple(by_source.get(source.source.group_key(), ()))
            for index in candidate_indices:
                current, current_parents, current_merged_from = result[index]
                if ParentSource.merge(current.source, source.source).is_incompatible():
                    continue
                merged = current.merge(source)
                if merged is None:
                    continue
                matched = True
                result[index] = (
                    merged,
                    current_parents + source_parents,
                    current_merged_from + source_merged_from,
                )
            if not matched:
                new_index = len(result)
                result.append((source, source_parents, source_merged_from))
                source_key = source.source.group_key()
                by_source.setdefault(source_key, []).append(new_index)
                if source.source.is_unanchored():
                    unanchored_indices.append(new_index)

        merged_set = self._set_from_entries(result)
        changed = (
            merged_set.candidates != self.candidates
            or merged_set.parent_links != self.parent_links
            or merged_set.merged_from_links != self.merged_from_links
        )
        self._adopt_from(merged_set)
        return changed

    def merge_transition_output_attrs(self, other: "CandidateSet") -> bool:
        """Merge freshly computed attrs into context-derived stack-entry attrs.

        ``self`` is attrs computed from active dotted-rule contexts for the
        symbol being pushed; ``other`` is terminal-hook or reduction attrs
        computed during ``feed_token()``. Agreeing rows are record-merged, keep
        the context source, and remember which ``other`` candidate was merged
        into the stack-entry candidate.

        :param other: Candidate attrs computed immediately before the parser
            stack entry is pushed.
        """

        if other.is_empty():
            return True
        if self.is_empty():
            self._replace_candidates(
                other.candidates,
                parent_links=other.parent_links,
                merged_from_links=other.merged_from_links,
            )
            return bool(self.candidates)

        entries = []
        for child in self.candidates:
            for transition_output in other.candidates:
                if not child.inh.agrees_with(transition_output.inh):
                    continue
                if not transition_output.inh.agrees_with(child.inh):
                    continue
                merged_inh = child.inh.merge(transition_output.inh)
                merged_syn = child.syn.merge(transition_output.syn)
                if merged_inh is None or merged_syn is None:
                    continue
                merged = Candidate(merged_inh, merged_syn, child.source)
                transition_output_key = transition_output.relation_key()
                entries.append(
                    (
                        merged,
                        self._relations_for(self.parent_links, child),
                        self._relations_for(self.merged_from_links, child)
                        + self._relations_for(other.merged_from_links, transition_output)
                        + (transition_output_key,),
                    )
                )

        result = self._set_from_entries(entries)
        self._adopt_from(result)
        return bool(self.candidates)

    def compatible_with_source(
        self,
        source: ParentSource,
        parent_candidate: Optional[Candidate]=None,
    ) -> Tuple[Candidate, ...]:
        """Sibling filter of \\textsc{Args} (popl27 attrparse.tex).

        Implements the ``i_ell > 0`` (left-sibling) case of ``Args``: select this
        sibling's candidates that are reachable through the SAME parent lineage as
        the parent record being evaluated, i.e. those whose chain equals
        ``Lambda_{X0} . [rho^p_{i_ell}]``. ``source`` matches the dotted-rule
        occurrence ``rho^p_{i_ell}`` and ``parent_candidate`` pins the parent
        lineage ``Lambda_{X0}`` (a candidate is kept only if its ``parent_links``
        edge points at that exact parent candidate). This chain condition -- not a
        bare ``prod(pi) = p`` filter -- is what keeps spurious cross-lineage
        plurality out (see the example in attrparse.tex).

        :param source: RHS occurrence ``rho^p_{i_ell}`` to match.
        :param parent_candidate: Selected parent candidate pinning ``Lambda_{X0}``.
        """

        result = []
        parent_key = parent_candidate.relation_key() if parent_candidate is not None else None
        # INVARIANT: empty parent_links means this set records no parent edges,
        # which happens only at the single-context root (candidates built via
        # candidates_or_empty(ROOT_SOURCE) with no parent). There is then exactly
        # one lineage, so the parent-candidate filter is vacuous -- and applying
        # it anyway would be WRONG: `parent_key not in ()` is always true and
        # would drop every candidate. Non-root children always carry parent_links
        # (attached by seed_child/apply_child_inherited, preserved by
        # only_inh/merge/select_for_parent_context), so skipping the filter when
        # parent_links is empty can never mix lineages.
        has_parent_relation = bool(self.parent_links)
        for candidate in self.candidates:
            merged_source = ParentSource.merge(candidate.source, source)
            if merged_source.is_incompatible():
                continue
            if parent_key is not None and has_parent_relation:
                parents = self._relations_for(self.parent_links, candidate)
                if parent_key not in parents:
                    continue
            result.append(candidate.with_source(merged_source))
        return self._dedupe(tuple(result))

    def select_for_parent_context(
        self,
        source: ParentSource,
        parent_attrs: "CandidateSet",
    ) -> "CandidateSet":
        """Keep candidates that fit one RHS occurrence and live parent set.

        This is the relation-only counterpart of recomputing ``rhs[i].inh``.
        For a context such as ``s -> x A * B``, an existing ``A`` candidate is
        kept when its source matches ``s -> x * A B`` and its parent relation
        points at one of the currently possible ``s`` candidates.

        :param source: RHS occurrence source to match.
        :param parent_attrs: Currently possible LHS candidates for the rule.
        """

        parent_keys = {
            parent_candidate.relation_key()
            for parent_candidate in parent_attrs.candidates_or_empty(ROOT_SOURCE)
        }
        # See compatible_with_source: empty parent_links => single-context root,
        # where the parent filter is vacuous (and applying it would drop all).
        has_parent_relation = bool(self.parent_links)
        entries = []
        for candidate in self.candidates:
            merged_source = ParentSource.merge(candidate.source, source)
            if merged_source.is_incompatible():
                continue
            parents = self._relations_for(self.parent_links, candidate)
            if has_parent_relation:
                selected_parents = tuple(parent for parent in parents if parent in parent_keys)
                if not selected_parents:
                    continue
            else:
                selected_parents = tuple(parent_keys)
            entries.append(
                (
                    candidate.with_source(merged_source),
                    selected_parents,
                    self._relations_for(self.merged_from_links, candidate),
                )
            )
        return self._set_from_entries(entries)

    def has_candidate_for_parent_context(
        self,
        source: ParentSource,
        parent_candidate: Candidate,
    ) -> bool:
        """Return whether a candidate can come from one parent context.

        This is the allocation-free membership check used before pruning an
        entire stack prefix. For ``s -> x A * B``, it answers whether this
        child set has at least one ``A`` candidate linked to the selected ``s``
        candidate.

        :param source: RHS occurrence source to match.
        :param parent_candidate: Selected LHS candidate for the production.
        """

        parent_key = parent_candidate.relation_key()
        # See compatible_with_source: empty parent_links => single-context root,
        # where the parent filter is vacuous (and applying it would drop all).
        has_parent_relation = bool(self.parent_links)
        for candidate in self.candidates:
            if ParentSource.merge(candidate.source, source).is_incompatible():
                continue
            if has_parent_relation and parent_key not in self._relations_for(self.parent_links, candidate):
                continue
            return True
        return False

    def has_compatible_candidate(self, candidate: Candidate) -> bool:
        return any(current.is_compatible_with(candidate) for current in self.candidates)

    def compatible_candidates(self, candidate: Candidate) -> Tuple[Candidate, ...]:
        return tuple(
            current
            for current in self.candidates
            if current.is_compatible_with(candidate)
        )

    def stack_candidates_merged_from(self, candidate: Candidate) -> Tuple[Candidate, ...]:
        """Return stack-entry candidates that merged ``candidate``.

        ``AccumulatedAttrs`` uses this after shift/reduce to map a freshly
        computed candidate to the final candidate stored on the parser stack.

        :param candidate: Candidate computed immediately before a parser stack
            entry is pushed.
        """

        merged_from_key = candidate.relation_key()
        if not self.merged_from_links:
            return self.compatible_candidates(candidate)
        return tuple(
            current
            for current in self.candidates
            if merged_from_key in self._relations_for(self.merged_from_links, current)
        )

    def only_inh(self) -> "CandidateSet":
        entries = []
        for candidate in self.candidates:
            entries.append(
                (
                    candidate.only_inh(),
                    self._relations_for(self.parent_links, candidate),
                    self._relations_for(self.merged_from_links, candidate),
                )
            )
        return self._set_from_entries(entries)


@dataclass(frozen=True)
class SymbolOccurrence:
    """Stable key for accumulated attributes of one parsed symbol.

    :param kind: Symbol category, such as ``symbol`` or ``terminal``.
    :param symbol: Grammar symbol name.
    :param start: Start token index of the occurrence.
    :param end: End token index of the occurrence.
    """

    kind: str
    symbol: str
    start: int
    end: int


@dataclass(frozen=True)
class AccumulatedValueRow:
    """Observed accumulated attrs for one semantic path.

    This has the same visible shape as an ``Candidate``: ``inh``,
    ``syn``, and ``source``. It is not a parser-stack candidate, so its identity
    keeps both inherited and synthesized records instead of applying the stack
    candidate invariant.

    :param inh: Observed inherited attrs selected by ``ACCUMULATE_ATTRS``.
    :param syn: Observed synthesized attrs selected by ``ACCUMULATE_ATTRS``.
    :param source: Source of the original occurrence candidate.
    """

    inh: AttrRecord = EMPTY_RECORD
    syn: AttrRecord = EMPTY_RECORD
    source: ParentSource = UNANCHORED_SOURCE
    _identity_key: Tuple[Any, ...] = field(init=False, repr=False, compare=False)

    def __post_init__(self) -> None:
        object.__setattr__(
            self,
            "_identity_key",
            (self.inh.key, self.syn.key, self.source.identity_key()),
        )

    def identity_key(self) -> Tuple[Any, ...]:
        """Return the row key used for accumulated payload dedupe."""

        return self._identity_key

    def merge(self, other: "AccumulatedValueRow") -> Optional["AccumulatedValueRow"]:
        source = ParentSource.merge(self.source, other.source)
        if source.is_incompatible():
            return None
        inh = self.inh.merge(other.inh)
        if inh is None:
            return None
        syn = self.syn.merge(other.syn)
        if syn is None:
            return None
        return AccumulatedValueRow(inh, syn, source)


class AccumulatedValueSet:
    """Value rows recorded for one accumulated symbol occurrence.

    The public shape intentionally keeps a ``candidates`` iterable so existing
    inspection code can continue to project ``candidate.inh`` and
    ``candidate.syn``. Unlike ``CandidateSet``, this class does not carry
    parent links or merge links.

    :param candidates: Observed accumulated rows.
    """

    def __init__(self, candidates: Sequence[AccumulatedValueRow]=()) -> None:
        self.candidates = self._dedupe(candidates)
        self._cache_key = tuple(candidate.identity_key() for candidate in self.candidates)

    @staticmethod
    def _dedupe(candidates: Sequence[AccumulatedValueRow]) -> Tuple[AccumulatedValueRow, ...]:
        result: List[AccumulatedValueRow] = []
        seen = set()
        for candidate in candidates:
            key = candidate.identity_key()
            if key in seen:
                continue
            seen.add(key)
            result.append(candidate)
        return tuple(result)

    def copy(self) -> "AccumulatedValueSet":
        result = AccumulatedValueSet.__new__(AccumulatedValueSet)
        result.candidates = self.candidates
        result._cache_key = self._cache_key
        return result

    def cache_key(self) -> Tuple[Any, ...]:
        """Return the snapshot key for this accumulated payload."""

        return self._cache_key

    def is_empty(self) -> bool:
        return not self.candidates

    def merge(self, other: "AccumulatedValueSet") -> bool:
        """Merge observed rows from another accumulated value set.

        Rows with compatible records and source are merged; incompatible rows
        remain as distinct alternatives.

        :param other: Incoming accumulated values for the same occurrence.
        """

        if other.is_empty():
            return False

        result = list(self.candidates)
        if not result:
            self.candidates = other.candidates
            self._cache_key = other.cache_key()
            return bool(self.candidates)

        for incoming in other.candidates:
            matched = False
            for index, current in enumerate(result):
                merged = current.merge(incoming)
                if merged is None:
                    continue
                matched = True
                result[index] = merged
            if not matched:
                result.append(incoming)

        candidates = self._dedupe(result)
        cache_key = tuple(candidate.identity_key() for candidate in candidates)
        changed = candidates != self.candidates
        self.candidates = candidates
        self._cache_key = cache_key
        return changed


@dataclass(frozen=True)
class AccumulatedProjection:
    """Tracked accumulated attrs owned by one visible stack candidate.

    :param owner: Stack-symbol candidate under which this projection is valid.
    :param occurrence: Hidden or visible symbol occurrence being accumulated.
    :param attrs: Already-selected accumulated value rows for the occurrence.
    """

    # TODO(accumulated-projector): This is still an eager projection: each row
    # stores already-materialized attrs for one hidden occurrence under one
    # owner candidate. A lazy projector would instead store the relation needed
    # to derive the occurrence attrs from a future surviving owner candidate.
    # For example, after reducing `name -> NAME`, the current form stores
    # `NAME.inh.ctx` values directly on the reduced owner. A projector form
    # would store something like "given the surviving `name`/ancestor owner,
    # replay or select the semantic relation that computes this NAME's attrs",
    # and would materialize selected value rows only when AccumulatedAttrs
    # records the final visible owner. That would avoid copying stale hidden
    # occurrence rows through later reductions, but it requires the
    # reduce/transition relation to be composable across multiple owners.
    owner: Candidate
    occurrence: SymbolOccurrence
    attrs: AccumulatedValueSet

    def with_owner(self, owner: Candidate) -> "AccumulatedProjection":
        return AccumulatedProjection(owner, self.occurrence, self.attrs)

    def is_compatible_with_owner(self, owner: Candidate) -> bool:
        return self.owner.is_compatible_with(owner)

    def identity_key(self) -> Tuple[Any, ...]:
        """Return the dedupe key for an accumulated projection.

        The key combines the surviving owner candidate, occurrence span/kind,
        and selected attrs. ``AccumulatedProjection.dedupe()`` uses it when
        projections are moved across reductions or stored on an AttributeState.
        """

        return (
            self.owner.identity_key(),
            self.occurrence.kind,
            self.occurrence.symbol,
            self.occurrence.start,
            self.occurrence.end,
            self.attrs.cache_key(),
        )

    @staticmethod
    def dedupe(projections: Iterable["AccumulatedProjection"]) -> Tuple["AccumulatedProjection", ...]:
        """Remove duplicate projections by ``AccumulatedProjection.identity_key``."""

        result: List[AccumulatedProjection] = []
        seen = set()
        for projection in projections:
            key = projection.identity_key()
            if key in seen:
                continue
            seen.add(key)
            result.append(projection)
        return tuple(result)


@dataclass(frozen=True)
class ReductionTrace:
    """Compatible candidate relation produced by one reduction.

    :param lhs: Final LHS candidate after synthesized writes.
    :param children: RHS occurrence candidates selected in the same semantic
        path.
    """

    lhs: Candidate
    children: Tuple[Candidate, ...]


class AccumulatedAttrs:
    """Persistent store for selected attributes by symbol occurrence.

    :param config: ACCUMULATE_ATTRS configuration from the semantic runtime.
    :param attrs: Existing occurrence-to-accumulated-values map.
    :param copy_attrs: Whether to copy the map and contained value sets.
    :param shared: Whether this instance shares its backing map with another
        snapshot and must copy the map shell before writing.
    """

    def __init__(
        self,
        config: AccumulateConfig=None,
        attrs: Optional[Dict[SymbolOccurrence, AccumulatedValueSet]]=None,
        *,
        copy_attrs: bool=True,
        shared: bool=False,
    ) -> None:
        self.tracked = normalize_accumulate_attrs(config)
        if attrs is None:
            self.attrs = {}
        elif copy_attrs:
            self.attrs = {
                occurrence: symbol_attrs.copy()
                for occurrence, symbol_attrs in attrs.items()
            }
        else:
            self.attrs = attrs
        self._shared = shared

    @classmethod
    def _shared_copy(
        cls,
        tracked: Dict[str, Optional[Set[str]]],
        attrs: Dict[SymbolOccurrence, AccumulatedValueSet],
    ) -> "AccumulatedAttrs":
        result = cls.__new__(cls)
        result.tracked = tracked
        result.attrs = attrs
        result._shared = True
        return result

    def copy(self) -> "AccumulatedAttrs":
        self._shared = True
        return self._shared_copy(self.tracked, self.attrs)

    def _ensure_unshared(self) -> None:
        if self._shared:
            self.attrs = dict(self.attrs)
            self._shared = False

    def projections_for_symbol(
        self,
        symbol: Optional[str],
        span: Optional[Tuple[int, int]],
        attrs: CandidateSet,
        kind: str="symbol",
    ) -> Tuple[AccumulatedProjection, ...]:
        if symbol is None or span is None:
            return tuple()

        symbol = str(symbol)
        if symbol not in self.tracked:
            return tuple()

        occurrence = SymbolOccurrence(kind, symbol, span[0], span[1])
        tracked_attrs = self.tracked[symbol]
        result = []
        for candidate in attrs.candidates:
            inh = candidate.inh.without_unselected("inh", tracked_attrs)
            syn = candidate.syn.without_unselected("syn", tracked_attrs)
            # A bare symbol also tracks its occurrence when it has no attrs.
            # Attribute-specific entries still require a selected value.
            if tracked_attrs is not None and not (inh.has_values() or syn.has_values()):
                continue
            selected = AccumulatedValueSet(candidates=(AccumulatedValueRow(inh, syn, candidate.source),))
            result.append(AccumulatedProjection(candidate, occurrence, selected))
        return AccumulatedProjection.dedupe(result)

    @staticmethod
    def _payload_keys(attrs: AccumulatedValueSet) -> Set[Tuple[Any, ...]]:
        """Return observed accumulated values, ignoring provenance.

        Two candidates may have different parent sources while exposing the
        same accumulated payload, such as two ``NAME`` paths that both produce
        ``inh.bnd=True``. Projection retention only cares whether future input
        can still narrow the observed payload, so source identity is deliberately
        ignored here.

        :param attrs: Recorded accumulated attrs for one symbol occurrence.
        """

        return {
            (candidate.inh.key, candidate.syn.key)
            for candidate in attrs.candidates
        }

    def is_singleton_payload(self, occurrence: SymbolOccurrence) -> bool:
        """Return whether an occurrence has one observed accumulated value.

        :param occurrence: Symbol occurrence stored in ``AccumulatedAttrs``.
        """

        attrs = self.attrs.get(occurrence)
        return attrs is not None and len(self._payload_keys(attrs)) == 1

    def unsettled_projections(
        self,
        projections: Iterable[AccumulatedProjection],
    ) -> Tuple[AccumulatedProjection, ...]:
        """Drop projections whose occurrence payload is already singleton.

        :param projections: Projection rows currently carried by a stack entry.
        """

        result = []
        settled_occurrences = set()
        unsettled_occurrences = set()
        for projection in projections:
            occurrence = projection.occurrence
            if occurrence in settled_occurrences:
                continue
            if occurrence not in unsettled_occurrences:
                if self.is_singleton_payload(occurrence):
                    settled_occurrences.add(occurrence)
                    continue
                unsettled_occurrences.add(occurrence)
            result.append(projection)
        return tuple(result)

    @staticmethod
    def _is_refinement(existing: AccumulatedValueSet, selected: AccumulatedValueSet) -> bool:
        if selected.is_empty() or existing.is_empty():
            return False

        def source_refines(existing_source: ParentSource, selected_source: ParentSource) -> bool:
            if existing_source.is_unanchored():
                return True
            if selected_source.is_unanchored():
                return False
            return not ParentSource.merge(selected_source, existing_source).is_incompatible()

        for selected_candidate in selected.candidates:
            if not any(
                existing_candidate.inh.agrees_with(selected_candidate.inh)
                and existing_candidate.syn.agrees_with(selected_candidate.syn)
                and source_refines(existing_candidate.source, selected_candidate.source)
                for existing_candidate in existing.candidates
            ):
                return False
        return len(selected.candidates) < len(existing.candidates) or selected.candidates != existing.candidates

    def _record_selected_attrs(
        self,
        occurrence: SymbolOccurrence,
        selected: AccumulatedValueSet,
    ) -> bool:
        existing = self.attrs.get(occurrence)
        if existing is None:
            self._ensure_unshared()
            self.attrs[occurrence] = selected
            return True
        if self._is_refinement(existing, selected):
            self._ensure_unshared()
            self.attrs[occurrence] = selected
            return True
        merged = existing.copy()
        changed = merged.merge(selected)
        if changed:
            self._ensure_unshared()
            self.attrs[occurrence] = merged
        return changed

    def record_projection(self, projection: AccumulatedProjection) -> bool:
        return self._record_selected_attrs(projection.occurrence, projection.attrs)

    def assign_occurrence(
        self,
        occurrence: SymbolOccurrence,
        value_sets: Sequence["AccumulatedValueSet"],
    ) -> bool:
        """Overwrite an occurrence's accumulated value with the current gathered set.

        Gather-then-assign: ``value_sets`` are the live projection payloads for one
        occurrence at the current parser step. Their union is the authoritative
        current value, so a parent lineage pruned later cannot leave a stale row in
        sigma. Unlike :meth:`record_projection`, this does not accumulate into the
        past -- it replaces.

        ASSUMES ``value_sets`` is the occurrence's COMPLETE live set at this step.
        A partial set (some live projection on another stack entry) would overwrite
        sigma too narrowly; combined with the settle-drop in
        ``ParserState._record_accumulated_attrs`` a premature singleton then gets
        cemented (the dropped projection is never carried again to correct it).

        :param occurrence: Symbol occurrence being recorded.
        :param value_sets: Accumulated value sets for the occurrence's live
            projections at this step.
        """

        merged: Optional[AccumulatedValueSet] = None
        for value_set in value_sets:
            if merged is None:
                merged = value_set.copy()
            else:
                merged.merge(value_set)
        if merged is None:
            return False
        existing = self.attrs.get(occurrence)
        if existing is not None and existing.cache_key() == merged.cache_key():
            return False
        self._ensure_unshared()
        self.attrs[occurrence] = merged
        return True

    def items(self):
        return self.attrs.items()

    def __bool__(self) -> bool:
        return bool(self.attrs)


@dataclass
class AttributeState:
    """Semantic companion for one parser stack entry.

    :param state: LALR state id or State object represented by this entry.
    :param symbol: Grammar symbol shifted or reduced into this entry.
    :param span: Token span covered by this entry.
    :param symbol_kind: Stored symbol category for accumulation.
    :param attrs: Attributes stored for the symbol represented by this parser
        stack entry.
    :param virtuals: Candidate attributes for nonterminals started in this
        parser state without a concrete stack symbol.
    :param accumulated: Tracked accumulated projections owned by candidates for
        this stack symbol.
    """

    state: Union[int, State]
    symbol: Optional[str]
    span: Optional[Tuple[int, int]]
    symbol_kind: Optional[str]
    attrs: CandidateSet
    virtuals: Dict[str, CandidateSet]
    accumulated: Tuple[AccumulatedProjection, ...]

    def __init__(
        self,
        state: Union[int, State],
        symbol: Optional[str]=None,
        span: Optional[Tuple[int, int]]=None,
        symbol_kind: Optional[str]=None,
    ):
        self.state = state
        self.symbol = symbol
        self.span = span
        self.symbol_kind = symbol_kind
        self.attrs = CandidateSet()
        self.virtuals = {}
        self.accumulated = tuple()

    def copy(self) -> "AttributeState":
        result = AttributeState(self.state, self.symbol, self.span, self.symbol_kind)
        result.attrs = self.attrs.copy()
        result.virtuals = {name: attrs.copy() for name, attrs in self.virtuals.items()}
        result.accumulated = self.accumulated
        return result

    def set_accumulated(self, projections: Iterable[AccumulatedProjection]) -> None:
        self.accumulated = AccumulatedProjection.dedupe(tuple(projections))

    def copy_accumulated_from(self, other: "AttributeState") -> None:
        self.accumulated = other.accumulated

    def carried_accumulated_to(self, next_state: "AttributeState") -> Tuple[AccumulatedProjection, ...]:
        """Move this entry's projections to the next pushed stack entry.

        When a production prefix grows from ``s -> x A * A`` to ``s -> x A A *``,
        projections for hidden descendants of ``x`` should travel from the old
        top entry to the new top entry. The carry is valid only when the old and
        new owner candidates belong to adjacent RHS positions of the same rule
        and share a parent candidate.

        :param next_state: Stack entry pushed by the shift or goto transition.
        """

        if not self.accumulated:
            return tuple()

        next_by_parent = {}
        for next_candidate in next_state.attrs.candidates:
            for parent_key in next_state.attrs.parent_keys_for(next_candidate):
                next_by_parent.setdefault(parent_key, []).append(next_candidate)
        if not next_by_parent:
            return tuple()

        carried = []
        for projection in self.accumulated:
            previous_owners = self.attrs.compatible_candidates(projection.owner)
            for previous_owner in previous_owners:
                for parent_key in self.attrs.parent_keys_for(previous_owner):
                    next_owners = next_by_parent.get(parent_key, ())
                    for next_owner in next_owners:
                        if not self._is_adjacent_rhs_carry(previous_owner, next_owner):
                            continue
                        carried.append(projection.with_owner(next_owner))
        return AccumulatedProjection.dedupe(carried)

    @staticmethod
    def _is_adjacent_rhs_carry(
        previous_owner: Candidate,
        next_owner: Candidate,
    ) -> bool:
        """Return whether two owners are adjacent RHS positions of one rule.

        Parent keys alone are not enough when two alternatives share the same LHS
        candidate. Carrying from ``s -> x * A ... B`` to ``s -> x A * ... B`` is
        valid, but carrying from the ``... C`` alternative to the ``... B``
        alternative is not.

        :param previous_owner: Candidate that currently owns the projection.
        :param next_owner: Candidate for the newly pushed stack entry.
        """

        previous_ruleptr = getattr(previous_owner.source, "ruleptr", None)
        next_ruleptr = getattr(next_owner.source, "ruleptr", None)
        if previous_ruleptr is None or next_ruleptr is None:
            return False
        return (
            previous_ruleptr.rule is next_ruleptr.rule
            and next_ruleptr.ptr == previous_ruleptr.ptr + 1
        )

    def merge_symbol(self, symbol: str, attrs: CandidateSet) -> bool:
        symbol = str(symbol)
        if self.symbol != symbol:
            return False
        merged_attrs = self.attrs.copy()
        changed = merged_attrs.merge(attrs)
        if changed or self.attrs.is_empty():
            self.attrs = merged_attrs
            return True
        return False

    def merge_virtual(self, symbol: str, attrs: CandidateSet) -> bool:
        symbol = str(symbol)
        existing = self.virtuals.get(symbol)
        if existing is None:
            self.virtuals[symbol] = attrs.copy()
            return True
        return existing.merge(attrs)
