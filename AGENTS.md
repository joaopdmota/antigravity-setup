# 🚀 AntiGravity Agents Guide: Mastering the Ecosystem

You have built a specialized ecosystem of agents. To extract 100% of its potential, you must interact with it following the "AntiGravity Pro" workflow.

## 🛠️ Slash Commands

The heart of the system lies in the workflows within `.agent/workflows/`. You can call them at any time:

| Command | Agent | When to Use |
| :--- | :--- | :--- |
| **`/nexus`** | **Nexus** | The primary command. Use it to start any new feature or major refactor. It orchestrates the other sub-agents. |
| **`/planner`** | **Planner** | Use when you want to discuss **strategy** or architecture before touching any code. It focuses on the `implementation_plan.md`. |
| **`/task-manager`** | **Task Mgr** | Use to organize the backlog. If you have a plan but don't know where to start, it creates the checklist in `task.md`. |
| **`/reviewer`** | **Reviewer** | Use **before merging** or finalizing a task. it will check the rules in `.agent/rules/` and point out flaws. |

---

## 🔄 The Perfect Development Cycle

To guarantee 100% quality, ask me to follow these phases:

### 1. Strategic Phase (`/planner`)
> **You say:** "/planner I want to add a real-time notification system."
- **What happens:** I will analyze your Go/TS/React rules and create a detailed `implementation_plan.md`. **Do not settle for anything less than a solid plan here.**

### 2. Breakdown Phase (`/task-manager`)
> **You say:** "/task-manager break this plan into micro-tasks."
- **What happens:** The system creates a `task.md`. This prevents me (the agent) from getting lost in long tasks and ensures you track progress in real-time.

### 3. Execution Phase (Nexus)
- **What happens:** I execute the tasks from `task.md` one by one. The secret here is that I **always** read the `.agent/rules/` before each new file. You don't need to remind me to use HSL or Conventional Commits; the rules take care of that.

### 4. Audit Phase (`/reviewer`)
> **You say:** "/reviewer review what has been done so far."
- **What happens:** The review sub-agent steps in with a critical eye, ensuring the implementation didn't deviate from the original plan and respects the style rules.

---

## 💡 Expert Tips

1.  **Rules are Alive:** If you notice me forgetting something (e.g., "Always use Tailwind"), don't just tell me in the chat. **Ask me to update the corresponding `rules` file.** This makes the learning permanent.
2.  **Context is King:** Before starting a large task, you can say: "Nexus, read all our rules and workflows before starting." This "warms up" the agent's context.
3.  **Use `walkthrough.md`:** At the end of each delivery, ask for a walkthrough. It serves as automatic documentation of what was done and how to test it.

---

## 🎯 The Ultimate Goal
This system was designed so you can focus on the **"WHAT"** (the product) while the agents take care of the **"HOW"** (the technique, standards, quality) automatically and consistently.
