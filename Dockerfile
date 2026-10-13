FROM nvidia/cuda:12.1.1-base-ubuntu22.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    python3 ca-certificates build-essential git m4 patch pkg-config curl unzip \
    libgl1 libglib2.0-0 libsndfile1 tesseract-ocr \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/gencor-artifact
COPY . .

# Install and check the same full environment as a native setup, including
# evaluation packages and the prepared ScopeLens cache. No model is loaded.
RUN ./setup.sh \
    && rm -rf .gencor/cache .gencor/downloads

# Mount a persistent volume here to reuse downloaded tokenizers and weights.
ENV HF_HOME=/opt/huggingface

CMD ["python3", "artifact.py"]
