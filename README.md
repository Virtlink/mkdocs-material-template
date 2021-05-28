# MkDocs Material Template
[![Build](https://github.com/Virtlink/mkdocs-material-template/actions/workflows/docs.yml/badge.svg)](https://github.com/Virtlink/mkdocs-material-template/actions)
[![Docs](https://img.shields.io/badge/docs-latest-brightgreen)](https://virtlink.github.io/mkdocs-material-template/)
[![GitHub](https://img.shields.io/github/license/Virtlink/mkdocs-material-template)](https://github.com/Virtlink/mkdocs-material-template/blob/main/LICENSE)

This is an MkDocs Material Template repository. It enables a useful set of extensions and plugins by default, and contains a Makefile that uses Docker to serve the documentation locally, and a Github workflow to publish the documentation on Github Pages by default.

- [Getting Started](https://virtlink.github.io/mkdocs-material-template/)
- [Material for MkDocs documentation](https://squidfunk.github.io/mkdocs-material/)

This template is intended both for those that include the documentation in their main repository, and those that use a separate repository for the documentation.

## Quick Start
To build the pages and see edits live using [Docker](https://www.docker.com/):

```bash
make
```

Or using [Python 3](https://www.python.org/):

```bash
pip install -r mkdocs_requirements.txt
mkdocs serve
```

Navigate to [localhost:8000](http://localhost:8000/) to see the documentation.
The local documentation is automatically reloaded when changes occur.
Changes pushed to the `main` branch are automatically deployed to Github Pages.

## License
[![License: CC0-1.0](https://licensebuttons.net/p/zero/1.0/88x31.png)](http://creativecommons.org/publicdomain/zero/1.0/)
To the extent possible under law, Daniel A. A. Pelsmaeker has waived all copyright and related or neighboring rights to the MkDocs Material Template repository. Feel free to use this as you see fit, no attribution required.
