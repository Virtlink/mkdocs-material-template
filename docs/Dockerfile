# https://mitchellh.com/writing/nix-with-dockerfiles
# Nix builder
FROM nixos/nix:latest AS builder

# Copy our source and setup our working dir.
COPY . /tmp/build
WORKDIR /tmp/build/docs

# Build the virtual environment and print the version
RUN nix --extra-experimental-features "nix-command flakes" develop --command uv sync
RUN nix --extra-experimental-features "nix-command flakes" develop --command uv run mkdocs --version

ENTRYPOINT [\
    "nix",\
    "--extra-experimental-features", "nix-command flakes",\
    "develop",\
    "--command", "uv", "run", "mkdocs"\
]
