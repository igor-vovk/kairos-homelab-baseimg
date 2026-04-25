# kairos-homelab-baseimg

A base Docker image for [Kairos](https://kairos.io/) built on Debian Bookworm, published to the GitHub Container Registry via GitHub Actions.

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
docker build -t kairos-homelab-baseimg --build-arg VERSION=v0.1.0 .
```

`VERSION` is passed to `kairos-init` and must be a valid version string such as `v0.1.0`, not `latest`.

## Publishing

The image is automatically built and published to GHCR on every push to `main` that changes the `Dockerfile` or the workflow file.
