#!/bin/sh

# Composerインストール
if [ -f "/workspace/src/backend/composer.json" ]; then
  cd /workspace/src/backend
  composer install
else
  echo "composer.json not found in /workspace/src/backend, skipping composer install."
fi

# npmインストール
if [ -f "/workspace/src/frontend/package.json" ]; then
  cd /workspace/src/frontend
  npm install
else
  echo "package.json not found in /workspace/src/frontend, skipping npm install."
fi

# 無限ループ
while true; do sleep 1000; done
