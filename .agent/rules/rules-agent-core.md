---
description: Mandatory rules guiding the behavior of all AI agents in this project.
---

# Agent Core Directives (MANDATORY)

These rules are non-negotiable and must be followed by every agent (Nexus, Planner, Reviewer, Task Manager) before any implementation or planning.

## 🏮 Skill Discovery (Phase 0)

1.  **MANDATORY CHECK**: Before starting any `PLANNING` or `EXECUTION` phase, you MUST list the contents of the `.agent/skills/` directory.
2.  **RELEVANCE MATCH**: If the task involves one of the domains covered by the skills (e.g., Backend, Frontend, DevOps), you MUST use `view_file` to read the corresponding `SKILL.md`.
3.  **LOG REASONING**: In your internal thought process, you MUST explicitly state which skills were consulted and how they influenced your plan.

## 🏗️ Workflow Alignment

- **Planner (/1-planner)**: Must explicitly cite relevant skills and rules in the `Technical Context` of `implementation_plan.md`. This plan MUST be rejected by the `/3-reviewer` if it ignores any relevant `SKILL.md`.
- **Task Manager (/2-task-manager)**: Must ensure that `task.md` includes verification steps (Acceptance Criteria) derived directly from the `SKILL.md` and `rules-*.md`.
- **Nexus (YOU)**: Must verify that the implementation adheres to the specific points of the relevant `SKILL.md` during execution.
- **Reviewer (/3-reviewer)**: Must use the skills and rules as the primary checklist for final validation. Failure to detect a skill violation is a critical failure.

## 🛑 Failure Condition

Ignoring a relevant skill is considered a **critical failure** of the agent's primary directive.
