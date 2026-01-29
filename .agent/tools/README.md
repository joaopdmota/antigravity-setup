# 🛠️ AntiGravity Agent Tools

This directory contains scripts, binaries, and utilities designed to be used by AntiGravity agents to automate specific tasks or extend their capabilities.

## 📂 Structure

- `scripts/`: Shell, Python, or Node.js scripts.
- `bin/`: Compiled binaries or specialized executables.
- `README.md`: This guide.

## 🚀 How to Use

Agents can call these tools using the `run_command` tool. For example:

```bash
bash .agent/tools/scripts/my-tool.sh --arg value
```

## 🔨 Adding New Tools

1. Create a script in the appropriate sub-directory.
2. Ensure it has execution permissions (`chmod +x`).
3. (Optional) Define a specific rule in `.agent/rules/` to teach agents when to use this tool.
