# kairos-homelab-baseimg

A base Docker image for [Kairos](https://kairos.io/) built on Ubuntu 24.04, published to the GitHub Container Registry via GitHub Actions.

## Image

```
ghcr.io/igor-vovk/kairos-homelab-baseimg:latest
```

## Usage

Use this image as a base for building custom Kairos OS images:

```dockerfile
FROM ghcr.io/igor-vovk/kairos-homelab-baseimg:latest

# Add your customizations here
```

## Building locally

```bash
docker build -t kairos-homelab-baseimg .
```

## Publishing

The image is automatically built and published to GHCR on every push to `main` that changes the `Dockerfile` or the workflow file.