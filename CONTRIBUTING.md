# Contributing to homebrew-lapdog

Thanks for your interest in contributing! This repository is a Homebrew tap that
hosts the formula for [`lapdog`](https://github.com/DataDog/dd-apm-test-agent).

## Reporting issues

- **Issues with the `lapdog` CLI itself** (bugs, feature requests) →
  [`DataDog/dd-apm-test-agent` issues](https://github.com/DataDog/dd-apm-test-agent/issues)
- **Issues specific to the Homebrew formula** (install failures, audit warnings,
  formula bugs) → [issues in this repo](https://github.com/DataDog/homebrew-lapdog/issues)

When reporting a formula issue, please include:

- macOS or Linux version
- Output of `brew config`
- Full output of the failing `brew install` / `brew upgrade` command (with `--verbose --debug` if possible)

## Local development setup

Brew commands like `brew install` and `brew test` only work on formulae that live
inside a registered tap. To test changes against your local clone, symlink it into
Homebrew's taps directory:

```sh
mkdir -p "$(brew --repository)/Library/Taps/datadog"
ln -sfn "$PWD" "$(brew --repository)/Library/Taps/datadog/homebrew-lapdog"
```

After that, brew sees the local clone as the `datadog/lapdog` tap and you can
reference the formula by name (e.g. `lapdog`) in any brew command.

## Submitting a pull request

1. Fork this repo and create a branch.
2. Make your changes in `Formula/lapdog.rb` (or other files).
3. Test the formula locally:

   ```sh
   brew install --build-from-source lapdog
   brew test lapdog
   brew audit --strict --new lapdog
   brew style Formula/lapdog.rb
   ```

4. Commit your changes with a descriptive message and open a pull request.

## Bumping the formula version

1. Update the `url` to the new release tag.
2. Update the `sha256`:

   ```sh
   curl -sL https://github.com/DataDog/dd-apm-test-agent/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```

3. Regenerate the `resource` blocks (see below) — transitive Python deps may
   have shifted between releases.
4. Test locally as above and open a PR.

## Regenerating resource blocks

The canonical Homebrew tool for this is `brew update-python-resources`, but it
doesn't work for `dd-apm-test-agent` because the package uses `setuptools-scm`
for versioning and the GitHub source tarball doesn't include `.git`, so
metadata extraction fails before pip can resolve the dependency tree.

Use [`homebrew-pypi-poet`](https://github.com/tdsmith/homebrew-pypi-poet) in a
fresh venv instead:

```sh
python3.13 -m venv /tmp/lapdog-poet
source /tmp/lapdog-poet/bin/activate

# poet relies on pkg_resources, which setuptools dropped in 75+
pip install "setuptools<75"
pip install homebrew-pypi-poet
pip install ddapm-test-agent==<version>

poet ddapm-test-agent

deactivate
```

Paste the output into `Formula/lapdog.rb`, replacing the existing `resource`
blocks. Drop the empty `resource "ddapm-test-agent"` block that poet emits —
that's the package itself, not a dependency, and its URL/sha256 belong on the
formula's top-level `url` / `sha256`.

## Publishing bottles

Formula PRs ship as precompiled bottles so users don't pay a 5–10 minute
compilation cost on install. Publishing is fully automated across two
workflows:

1. **On PR** — `tests.yml` builds bottles for macOS arm64 and Linux x86_64
   and uploads them as workflow artifacts. Its `publish-bottle` job then
   updates the formula's `bottle do` block to reference the future release
   URL and commits the change to the PR branch (signed by `dd-octo-sts[bot]`
   via the Contents API). The release itself is not yet created.
2. **On merge** — `release.yml` parses main's formula to extract the release
   tag, downloads the bottle artifacts from the PR's `tests.yml` run, creates
   the GitHub Release, and uploads the bottles.

No label or manual step is required. Non-formula PRs (docs, workflows, etc.)
skip publishing. PRs from forks skip the auto-bottle commit since the
dd-octo-sts token can't push to a fork's branch — open formula PRs from a
branch in this repo to get the auto-publish flow.

## License and contributor agreement

By contributing to this project, you agree that your contributions will be
licensed under the [Apache License 2.0](./LICENSE).

## Code of conduct

This project follows the
[Datadog Open Source Code of Conduct](https://github.com/DataDog/.github/blob/main/CODE_OF_CONDUCT.md).
By participating, you agree to abide by its terms.
