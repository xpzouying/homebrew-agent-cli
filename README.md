# homebrew-agent-cli

Homebrew tap for browser automation CLIs that drive your real browser
through a companion extension.

Requires the **kimi-webbridge** browser extension:
https://www.kimi.com/zh-cn/features/webbridge

## Install

```bash
brew tap xpzouying/agent-cli
brew install twitter-cli
brew install xiaohongshu-cli
```

If a CLI name collides with another tool already in your `PATH`, install with
the fully-qualified tap path:

```bash
brew install xpzouying/agent-cli/twitter-cli
```

## Available CLIs

| Formula | Description |
|---|---|
| `twitter-cli` | Browser-driven Twitter automation CLI |
| `xiaohongshu-cli` | Browser-driven Xiaohongshu automation CLI |

Run `<cli> --help` for the full subcommand list after install.

## Update

```bash
brew update
brew upgrade twitter-cli xiaohongshu-cli
```

## Uninstall

```bash
brew uninstall twitter-cli xiaohongshu-cli
brew untap xpzouying/agent-cli
```

## Platforms

Pre-built binaries are published for:

- macOS (Apple Silicon, `darwin-arm64`)
- Linux (`linux-amd64`)

## Reporting issues

Open an issue at https://github.com/xpzouying/homebrew-agent-cli/issues.
