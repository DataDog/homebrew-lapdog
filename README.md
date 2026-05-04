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
lapdog run      # start the local test agent
lapdog stop     # stop it
lapdog status   # check if it's running
lapdog claude   # launch Claude Code with LLM span capture
lapdog python   # launch python application with span capture
```

See the [`dd-apm-test-agent` README](https://github.com/DataDog/dd-apm-test-agent#readme)
for full documentation.

## Using `lapdog python` (optional ddtrace setup)

`lapdog python my_app.py` runs your Python app with `ddtrace` instrumentation
pointed at the local test agent. The Homebrew formula doesn't bundle `ddtrace`
itself, so install it into lapdog's venv once:

```sh
/opt/homebrew/opt/lapdog/libexec/bin/python -m pip install ddtrace
```

You don't need this for `lapdog claude`, `lapdog start`, or any of the other
subcommands — only for `lapdog python`.

## Updating

```sh
brew update
brew upgrade lapdog
```

If you installed `ddtrace` for `lapdog python`, re-run the install after each
upgrade — `brew upgrade` recreates the formula's venv from scratch:

```sh
/opt/homebrew/opt/lapdog/libexec/bin/python -m pip install ddtrace
```

## Reporting issues

Issues with the `lapdog` CLI itself belong in the
[`dd-apm-test-agent` issue tracker](https://github.com/DataDog/dd-apm-test-agent/issues).

Issues specific to the Homebrew formula (install failures, formula bugs) belong in
[this repo's issue tracker](https://github.com/DataDog/homebrew-lapdog/issues).

## License

Apache 2.0 — see [LICENSE](./LICENSE) and [NOTICE](./NOTICE).
