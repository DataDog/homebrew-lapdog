# homebrew-lapdog

Homebrew tap for [`lapdog`](https://github.com/DataDog/dd-apm-test-agent), a local
LLM Observability development tool.

## Install

```sh
brew install datadog/lapdog/lapdog
```

Or, equivalently:

```sh
brew tap datadog/lapdog
brew install lapdog
```

## What is lapdog?

`lapdog` is a CLI that wraps [`dd-apm-test-agent`](https://github.com/DataDog/dd-apm-test-agent)
to make it easy to view LLM Observability traces locally — no Datadog backend
required.

```sh
lapdog start      # start the local test agent
lapdog stop       # stop it
lapdog status     # check if it's running
lapdog claude     # launch Claude Code with LLM span capture
lapdog pi         # launch Pi with LLM span capture
lapdog codex      # launch Codex with LLM span capture
lapdog python     # launch a Python application with span capture
lapdog uninstall  # remove local lapdog state before uninstalling the package
```

See the [Lapdog install & usage guide](https://github.com/DataDog/dd-apm-test-agent/blob/master/lapdog/README.md)
for full documentation, including pip/Docker install paths and the full uninstall flow.

## Using `lapdog python` (optional ddtrace setup)

`lapdog python my_app.py` runs your Python app with `ddtrace` auto-instrumentation
pointed at the local test agent. You only need this for `lapdog python` — `lapdog
claude` and the other subcommands work without it.

Install `ddtrace` into your project's Python — wherever your app runs:

```sh
# in your project's venv
pip install ddtrace
```

## Updating

```sh
brew update
brew upgrade lapdog
```

## Uninstalling

Run Lapdog's cleanup command before removing the Homebrew package:

```sh
lapdog uninstall
brew uninstall lapdog
brew untap datadog/lapdog
```

`lapdog uninstall` stops the background agent, removes `~/.lapdog`, uninstalls
managed Claude Code/Pi integrations, and stops Codex watchers when possible.
If `lapdog codex` is still running during uninstall and anything remains under
`~/.lapdog`, remove it manually with `rm -rf ~/.lapdog`.

## Reporting issues

Issues with the `lapdog` CLI itself belong in the
[`dd-apm-test-agent` issue tracker](https://github.com/DataDog/dd-apm-test-agent/issues).

Issues specific to the Homebrew formula (install failures, formula bugs) belong in
[this repo's issue tracker](https://github.com/DataDog/homebrew-lapdog/issues).

## License

Apache 2.0 — see [LICENSE](./LICENSE) and [NOTICE](./NOTICE).
