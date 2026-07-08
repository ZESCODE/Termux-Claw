# Termux-Claw

**OpenClaw configuration for the ZES System on Termux/Android.**

OpenClaw is an open-source agent orchestration plugin integrated with [9Router](https://github.com/decolua/9router). This repo provides the configuration for running AI agents on Android via Termux.

## Setup

```bash
# Symlink config to home directory
ln -sf $PWD/.openclaw ~/.openclaw

# Or copy directly
cp -r .openclaw ~/
```

## Architecture

```
Termux/Android → 9Router (:20128) → Claude/DeepSeek/Groq/Gemini
                        ↓
               OpenClaw (agent config)
                        ↓
               AI Agents (zes-agent)
```

## Providers

- **gh/claude-sonnet-4.6** — GitHub Copilot (free)
- **deepseek-v4-flash** — DeepSeek (via Tor proxy rotation)
- **groq/llama-3.3-70b** — Groq (fast inference)
- **gemini/gemini-2.5-flash** — Google Gemini
- **claude-sonnet-4-20250514** — Anthropic API key

## IP Rotation

The `deepseek-v4-flash` model uses Tor exit node rotation every 30 minutes via Hermes cron jobs:

```bash
hermes cron list  # Shows active jobs
```

Countries: US, DE, FR, NL, CA, GB, JP, SG, CH, SE, NO, AU, KR, IE, FI
