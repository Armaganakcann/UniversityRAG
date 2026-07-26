#!/usr/bin/env bash
set -euo pipefail

echo "🚀 Initializing UniversityRAG Local Environment..."

# 1. Dependency Checks
command -v uv >/dev/null 2>&1 || { echo "❌ 'uv' is required but not installed. Aborting."; exit 1; }
command -v pnpm >/dev/null 2>&1 || { echo "❌ 'pnpm' is required but not installed. Aborting."; exit 1; }
command -v docker >/dev/null 2>&1 || { echo "❌ 'docker' is required but not installed. Aborting."; exit 1; }

# 2. Env File Setup
if [ ! -f .env ]; then
    echo "📋 Copying .env.development to .env..."
    cp configs/.env.development .env
fi

# 3. Installing Dependencies
echo "📦 Syncing Python & Node packages..."
uv sync || true
pnpm install || true

# 4. Pre-commit Hooks
echo "🔒 Installing pre-commit hooks..."
uv run pre-commit install || true

echo "✅ Environment initialization completed successfully!"
