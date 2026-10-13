# POPL 2027 Artifact Evaluation

**When to Analyze: Attribute-Guided Semantic Filtering for Constrained Decoding**

## 1. Introduction

This artifact provides GenCor, the comparison tools, and the experiment results
for the paper. GenCor applies attribute-guided constrained decoding to check
name-resolution constraints in Python and OCaml and type constraints in TypeScript.

The evaluation covers:

- **Table 1:** GenCor's effectiveness and decoding overhead compared with Vanilla,
  ReSample, and Type-Constrained Code Generation with Language Models.
- **Table 2:** GenCor's effectiveness and decoding overhead compared with ChopChop.

The included results can be evaluated on CPU. Generating new results requires a GPU.

## 2. Setup

Use either the supplied Docker image or the source repository. The artifact was
tested on Ubuntu 22.04 (x86_64).

### 2.1. Using the Docker image

The supplied `gencor-artifact.tar.gz` includes the installed environment and data.
GPU access requires an NVIDIA driver and NVIDIA Container Toolkit.

```bash
docker load --input gencor-artifact.tar.gz
mkdir -p output
docker run --rm -it --gpus device=0 \
  -v "$PWD/output:/opt/gencor-artifact/output" \
  -v gencor-huggingface:/opt/huggingface \
  gencor-artifact:latest bash
```

Continue inside the container in `/opt/gencor-artifact`.

### 2.2. Building from source

Requires Bash and Python 3.8+. GPU experiments also require an NVIDIA GPU and driver.

```bash
git clone https://github.com/pslhy/gencor-artifact.git
cd gencor-artifact
./setup.sh
```

Run the following commands from this directory.

## 3. Running the Experiments

The CPU commands compute tables from the included results and grade the generated
programs for pass@1. The GPU commands generate programs, grade them, and produce
the corresponding table. Each GPU run requires a new output directory.

### 3.1. Effectiveness and Overhead of GenCor (Table 1)

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

### 3.2. Comparison with ChopChop (Table 2)

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

### 3.3. Comparing with the Paper

Both tables report target errors, decoding time per token (`ms/token`), and pass@1
(the number of programs passing all tests). Lower error counts and times are
better; higher pass@1 counts are better.

Fixed seeds do not guarantee identical generated programs across GPU hardware or
CUDA/PyTorch versions, so fresh runs may differ in scores, timings, and timeouts.

### 3.4. Running GenCor on Other Tasks

Provide a JSON array with string fields `task_id`, `system_prompt`, `user_prompt`,
and `code_prompt`. The last field is the code prefix, without an opening code fence.
For example:

```bash
python3 gencor-run --benchmark-json examples/python.json \
  -l python -c name -m codellama/CodeLlama-7b-Instruct-hf \
  -s 0 -d 0 -t 90 -o output/custom -x demo
```

Generated code and statistics are saved under `output/custom/`. Use a new `-x`
value for each run. Custom tasks do not include pass@1 grading.
Examples are provided for [Python](examples/python.json),
[OCaml](examples/ocaml.json) (`-l ocaml -c name`), and
[TypeScript](examples/typescript.json) (`-l typescript -c type`).

## 4. Directory Structure

| Path | Contents |
| --- | --- |
| `artifact.py` | Table generation and experiment runner |
| `setup.sh` | Environment setup |
| `data/paper/` | Datasets, original generation results, and experiment configurations |
| `tools/gencor/` | GenCor implementation and grammars |
| `tools/type-constrained-code-generation/`, `tools/chopchop/` | Comparison tools |
| `tools/evaluation/` | Functional-correctness evaluators |
| `examples/` | Custom-input examples |
| `output/` | Newly generated results, grading records, tables, and logs |

## Acknowledgements

We thank the authors of
[Type-Constrained Code Generation with Language Models](https://github.com/eth-sri/type-constrained-code-generation)
and [ChopChop](https://github.com/large-loris-models/chopchop) for sharing their
implementations. We adapted both to match our vanilla generation settings,
so configuration differences do not hide errors observed in vanilla.
