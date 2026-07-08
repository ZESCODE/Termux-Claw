#!/bin/bash
# Termux-Claw Setup Script
set -e

echo "🔧 Setting up OpenClaw for Termux..."

# Copy config
mkdir -p ~/.openclaw/agents
cp -r .openclaw/openclaw.json ~/.openclaw/
cp -r .openclaw/agents/* ~/.openclaw/agents/

echo "✅ Config installed to ~/.openclaw/"
echo ""
echo "To verify:"
echo "  9Router should be running on :20128"
echo "  Check with: curl http://localhost:20128/api/providers"
