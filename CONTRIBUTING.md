# Contributing

Thanks for helping maintain pyresttest. This document supplements the original
project documentation with a repeatable local workflow.

## Local setup

Create an isolated environment and install the runtime dependencies:

```bash
python -m venv .venv
. .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -e .
```

The repository contains both unit tests and optional functional tests. Run the
core suite with:

```bash
python -m unittest discover
```

The `run_tests.sh` script also runs the functional and extension checks. The
functional check makes HTTP requests to the GitHub API, so run it only when
network access is available and do not add credentials to test fixtures.

## Pull requests

Keep changes focused, add or update tests when behavior changes, and explain
compatibility implications in the pull request. Please preserve the Apache-2.0
license and existing copyright notices.
