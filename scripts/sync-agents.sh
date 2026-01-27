#!/usr/bin/env bash
set -euo pipefail

REPO_URL="${AGENTS_REPO_URL:-https://github.com/joaopdmota/antigravity-setup.git}"
BRANCH="${AGENTS_BRANCH:-main}"

CACHE_DIR="${AGENTS_CACHE_DIR:-.tmp/antigravity-setup}"
DEST_DIR="${AGENTS_DEST_DIR:-.agent}"
SRC_DIR=".agent"

echo ">> Syncing ${SRC_DIR} from ${REPO_URL} (${BRANCH})"
mkdir -p "$(dirname "$CACHE_DIR")"

if [ ! -d "${CACHE_DIR}/.git" ]; then
  echo ">> Cloning repo (sparse)"
  git clone --filter=blob:none --no-checkout "$REPO_URL" "$CACHE_DIR"
  git -C "$CACHE_DIR" sparse-checkout init --cone
  git -C "$CACHE_DIR" sparse-checkout set "$SRC_DIR"
else
  echo ">> Updating cache repo"
  git -C "$CACHE_DIR" fetch origin "$BRANCH"
fi

git -C "$CACHE_DIR" checkout "$BRANCH"

if [ ! -d "${CACHE_DIR}/${SRC_DIR}" ]; then
  echo "!! ERROR: ${SRC_DIR} not found in repo."
  exit 2
fi

echo ">> Copying ${SRC_DIR} to ${DEST_DIR}"
mkdir -p "$DEST_DIR"
rsync -a --delete "${CACHE_DIR}/${SRC_DIR}/" "${DEST_DIR}/"

echo ">> Done ✅"
