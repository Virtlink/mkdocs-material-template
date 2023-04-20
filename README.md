# MkDocs Material Template
[![Build][badge-build-img]][badge-build-link]
[![Documentation][badge-docs-img]][badge-docs-link]
[![License][badge-license-img]][badge-license-link]

This is an MkDocs Material Template repository. It enables a useful set of extensions and plugins by default, and contains a Makefile that uses Docker to serve the documentation locally, and a Github workflow to publish the documentation on Github Pages by default.

- [Getting Started](https://virtlink.github.io/mkdocs-material-template/)
- [Material for MkDocs documentation](https://squidfunk.github.io/mkdocs-material/)

This template is intended both for those that include the documentation in their main repository, and those that use a separate repository for the documentation.

## Quick Start
To build the pages and see edits live using [Docker](https://www.docker.com/):

```shell
cd docs/
make
```

Or using [Python 3](https://www.python.org/), creating and activating a _virtual environment_ using `virtualenv` (the more featureful ancestor of `venv`, install with `python3 -m pip install virtualenv`):

```shell
virtualenv venv
source venv/bin/activate

cd docs/
pip install -r requirements.txt
mkdocs serve

deactivate
```

Navigate to [localhost:8000](http://localhost:8000/) to see the documentation.
The local documentation is automatically reloaded when changes occur.
Changes pushed to the `main` branch are automatically deployed to Github Pages.

## Updating Dependencies
Using the [pip-check-updates](https://pypi.org/project/pip-check-updates/) tool, you can check the versions of the dependencies. Install in a _virtual environment_:

```shell
pip install pip-check-updates
```

Usage:

```shell
cd docs/
pcu requirements.txt
```

And update the dependencies to their latest versions using:

```shell
cd docs/
pcu -u requirements.txt
```

## License
[![License: CC0-1.0](https://licensebuttons.net/p/zero/1.0/88x31.png)](http://creativecommons.org/publicdomain/zero/1.0/)
To the extent possible under law, Daniel A. A. Pelsmaeker has waived all copyright and related or neighboring rights to the MkDocs Material Template repository. Feel free to use this as you see fit, no attribution required.


[badge-build-link]: https://github.com/Virtlink/mkdocs-material-template/actions
[badge-build-img]: https://github.com/Virtlink/mkdocs-material-template/actions/workflows/documentation.yml/badge.svg
[badge-docs-link]: https://pelsmaeker.net/mkdocs-material-template/
[badge-docs-img]: https://img.shields.io/badge/docs-available-green.svg
[badge-license-link]: https://github.com/Virtlink/mkdocs-material-template/blob/main/LICENSE
[badge-license-img]: https://img.shields.io/github/license/Virtlink/mkdocs-material-template
