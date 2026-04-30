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

## Submitting a pull request

1. Fork this repo and create a branch.
2. Make your changes in `Formula/lapdog.rb` (or other files).
3. Test the formula locally:

   ```sh
   brew install --build-from-source ./Formula/lapdog.rb
   brew test lapdog
   brew audit --strict --new lapdog
   ```

4. If your change updates Python dependencies, regenerate the resource blocks:

   ```sh
   brew update-python-resources Formula/lapdog.rb
   ```

5. Commit your changes with a descriptive message and open a pull request.

## Bumping the formula version

1. Update the `url` to the new release tag.
2. Compute and update the `sha256`:

   ```sh
   curl -sL https://github.com/DataDog/dd-apm-test-agent/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
   ```

3. Run `brew update-python-resources Formula/lapdog.rb` to refresh the resource blocks.
4. Test locally as above and open a PR.

## License and contributor agreement

By contributing to this project, you agree that your contributions will be
licensed under the [Apache License 2.0](./LICENSE).

## Code of conduct

This project follows the
[Datadog Open Source Code of Conduct](https://github.com/DataDog/.github/blob/main/CODE_OF_CONDUCT.md).
By participating, you agree to abide by its terms.
