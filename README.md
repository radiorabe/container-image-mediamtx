# Container Image: RaBe MediaMTX

Our [MediaMTX](https://mediamtx.org) container image is based on upstream MediaMTX and our [RaBe Universal Base Image 10 Minimal](https://github.com/radiorabe/container-image-ubi10-minimal) base image.

## Usage

Use any container deployment strategy to deploy `ghcr.io/radiorabe/mediamtx:latest` (but replace `latest` with a specific version).

## Release Management

The CI/CD setup uses semantic commit messages following the [conventional commits standard](https://www.conventionalcommits.org/en/v1.0.0/).
There is a GitHub Action in [.github/workflows/semantic-release.yaml](./.github/workflows/semantic-release.yaml)
that uses [go-semantic-commit](https://go-semantic-release.xyz/) to create new
releases.

The commit message should be structured as follows:

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

The commit contains the following structural elements, to communicate intent to the consumers of your library:

1. **fix:** a commit of the type `fix` patches gets released with a PATCH version bump
1. **feat:** a commit of the type `feat` gets released as a MINOR version bump
1. **BREAKING CHANGE:** a commit that has a footer `BREAKING CHANGE:` gets released as a MAJOR version bump
1. types other than `fix:` and `feat:` are allowed and don't trigger a release

If a commit does not contain a conventional commit style message you can fix
it during the squash and merge operation on the PR.

## Build Process

The CI/CD setup uses the [Docker build-push Action](https://github.com/docker/build-push-action) to publish container images. This is managed in [.github/workflows/release.yaml](./.github/workflows/release.yaml).

## License

This application is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, version 3 of the License.

## Copyright

Copyright (c) 2022 [Radio Bern RaBe](http://www.rabe.ch)
