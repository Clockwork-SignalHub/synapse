# Option B: Full rebuild with Rust support
FROM python:3.11-slim

# Install build tools and dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libffi-dev \
    libpq-dev \
    curl \
    git \
    python3-dev \
    cargo \
    && rm -rf /var/lib/apt/lists/*

# Create synapse user
RUN useradd -m synapse

WORKDIR /home/synapse

# Copy the Synapse fork source code
COPY . .

# Upgrade pip/setuptools/wheel
RUN pip install --upgrade pip setuptools wheel maturin

# Install Synapse fork (will compile Rust extensions)
RUN pip install --no-cache-dir .

# Expose Synapse port
EXPOSE 8008

# Set default command
ENTRYPOINT ["python", "-m", "synapse.app.homeserver"]
CMD ["--config-path", "/data/homeserver.yaml"]
