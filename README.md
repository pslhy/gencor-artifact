# Artifact for "When to Analyze: Attribute-Guided Semantic Filtering for Constrained Decoding"

## Setup

Tested on Ubuntu 22.04 (x86_64). Requires Bash and Python 3.8+.

```bash
git clone https://github.com/pslhy/gencor-artifact.git
cd gencor-artifact
./setup.sh
```

### Using the supplied Docker image

Requires NVIDIA Container Toolkit.

```bash
docker load --input gencor-artifact.tar.gz
mkdir -p output
docker run --rm -it --gpus device=0 \
  -v "$PWD/output:/opt/gencor-artifact/output" \
  -v gencor-huggingface:/opt/huggingface \
  gencor-artifact:latest bash
```

Run the commands below inside the container.

## Effectiveness and Overhead of GenCor (Table 1 in the paper)

- Generate Table 1 from the saved execution logs (CPU):

  ```bash
  python3 artifact.py --tables table1 --output output/table1
  ```

  Result: `output/table1/table1.txt`.

- Full experiment (4 models, 5 seeds; GPU; estimated about 3 days):

  ```bash
  python3 artifact.py run --tables table1 --output output/full-table1
  ```

  Result: `output/full-table1/tables/table1.txt`.

- One model and seed (CodeLlama 7B, seed 0; GPU; estimated 3–4 hours):

  ```bash
  python3 artifact.py run --tables table1 --models codellama-7b --seeds 0 --output output/rerun-table1
  ```

  Result: `output/rerun-table1/tables/table1.txt`.

## Comparison with ChopChop (Table 2 in the paper)

- Generate Table 2 from the included results (CPU):

  ```bash
  python3 artifact.py --tables table2 --output output/table2
  ```

  Result: `output/table2/table2.txt`.

- Full experiment (4 models, 5 seeds; GPU; estimated 10–15 hours):

  ```bash
  python3 artifact.py run --tables table2 --output output/full-table2
  ```

  Result: `output/full-table2/tables/table2.txt`.

- One model and seed (CodeLlama 7B, seed 0; GPU; estimated under 1 hour):

  ```bash
  python3 artifact.py run --tables table2 --models codellama-7b --seeds 0 --output output/rerun-table2
  ```

  Result: `output/rerun-table2/tables/table2.txt`.

## Running GenCor on Other Tasks

Use or adapt the [Python](examples/python.json), [OCaml](examples/ocaml.json),
or [TypeScript](examples/typescript.json) JSON examples:

```bash
python3 gencor-run --benchmark-json examples/python.json \
  -l python -c name -m codellama/CodeLlama-7b-Instruct-hf \
  -s 0 -d 0 -t 90 -o output/custom -x demo
```

For OCaml or TypeScript, change the JSON path and use `-l ocaml -c name` or
`-l typescript -c type`, respectively. Results are saved under `output/custom/`.

## Reproducibility

Fixed seeds do not guarantee identical outputs across GPU hardware or
CUDA/PyTorch versions ([PyTorch’s reproducibility notes](https://docs.pytorch.org/docs/stable/notes/randomness.html)).
Reruns may differ in error counts, pass@1, runtime, and timeouts.

## Acknowledgements

We thank the authors of
[Type-Constrained Code Generation with Language Models](https://github.com/eth-sri/type-constrained-code-generation)
and [ChopChop](https://github.com/large-loris-models/chopchop) for sharing their
implementations. We adapted both to match our vanilla generation settings,
so configuration differences do not hide errors observed in vanilla.
