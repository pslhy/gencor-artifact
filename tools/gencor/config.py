import os

global args

args = None
version = '0.1.0'

# Central location for generated binary artifacts (parser caches, transducers,
# token spanner tables). Built and loaded from here so they don't litter the
# source dirs. Lives next to this file (repo root).
BIN_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "bin")


def bin_path(name):
    """Absolute path of a generated binary `name` under BIN_DIR (created on demand)."""
    os.makedirs(BIN_DIR, exist_ok=True)
    return os.path.join(BIN_DIR, name)
supported_language = ['python', 'ocaml', 'typescript']
supported_mode = ['syntax', 'none', 'uv_open', 'policyB', 'uv_every', 'uv_open_ummac', 'uv_open_ummac_kind', 'sem_type', 'sem_type_diag']
# -c accepts "base + flags" (e.g. -c uv_open ummac fg ai); flags compose the
# uv_open/policyB/uv_every semantic constrain. Legacy joined names normalize via legacy_mode_map.
supported_uv_flags = ['ummac', 'kind', 'fg', 'ai']
legacy_mode_map = {
    'uv_open_ummac': ('uv_open', ('ummac',)),
    'uv_open_ummac_kind': ('uv_open', ('ummac', 'kind')),
}
supported_benchmark=['THUDM/humaneval-x', 'mxeval/mbxp', "santi_mbpp", "bigcode/bigcodebench", "ocaml", "CodeHaluEval", "humaneval", "bigcodebench", "all_in_one", "all_in_one_mini", "mbpp_multilang", "mbpp_multilang_v2", "mbpp_multilang_v3", "humaneval_multilang", "all_in_one_multilang", "all_in_one_v2", "all_in_one_v2.1", "all_in_one_v2.2", "all_in_one_v2.3", "all_in_one_v2.4", "humaneval-mbpp-ts", "humaneval-js2py", "humaneval-mbpp-ml2py", "mbpp-ts2py", "bigcodebench-hard"]
timeout = 180 

colors = {
	'VERBOSE' : '\033[95m',
	'DEBUG' : '\033[94m',
	'INFO' : '\033[92m',
	'WARN' : '\033[93m',
	'ERROR' : '\033[91m',
	'ENDC' : '\033[0m'
}
