# 🧠 AntiGravity Memory

> **Purpose:** Persistent context that agents should remember across conversations. This captures architectural decisions, lessons learned, and project-specific context that doesn't fit in code or rules.

---

## 🏗️ Architectural Decisions

### Decision: [Title]
**Date:** YYYY-MM-DD  
**Context:** Why this decision was needed  
**Decision:** What was decided  
**Rationale:** Why this approach was chosen  
**Consequences:** Trade-offs and implications

**Example:**
```markdown
### Decision: Feature-Based Architecture
**Date:** 2026-03-13
**Context:** Project requires high cohesion and easy module removal for business domains.
**Decision:** Adopted vertical slice (feature-based) architecture for all business modules.
**Rationale:** Defined in `rules-tech-react.md` and `rules-architecture.md` as the gold standard for SaaS/Dashboard scale.
**Consequences:** Requires strict discipline to avoid cross-feature imports; must use public APIs (index.ts).

---

### Decision: Nexus Orchestration Activation
**Date:** 2026-03-13
**Context:** Need for a centralized development lifecycle management following standard v1.20.5.
**Decision:** Activated Nexus Orchestrator and established the 4-phase workflow (Planning, Task Decomposition, Execution, Audit).
**Rationale:** Standard project requirement for consistency and quality as per AGENTS.md.
**Consequences:** All future features must follow the strict workflow artifacts (plan, task, walkthrough).
```

---

## 🛠️ Tech Stack

### Primary Technologies
- **Frontend:** [e.g., Next.js 15, React 19]
- **Backend:** [e.g., Supabase, Go APIs]
- **Database:** [e.g., PostgreSQL]
- **State Management:** [e.g., Zustand, TanStack Query]
- **Styling:** [e.g., Vanilla CSS with HSL]

### Why These Choices?
- **[Technology]:** [Reason for choosing it over alternatives]

---

## 🎯 Business Domain Context

### What This Product Does
[Brief description of the product/service]

### Key Domain Concepts
- **[Concept]:** [Definition and importance]

---

## 🚨 Lessons Learned

### Mistake: Missing 'name' field in Skill Frontmatter
**Date:** 2026-03-13
**What Happened:** Backend Expert skill was missing the `name` field, causing indexing warnings/failures.
**Root Cause:** Inconsistent metadata during v1.20.5 migration.
**Solution:** Added `name: "backend-expert"` to frontmatter.
**Prevention:** Always verify SKILL.md frontmatter matches the [name, description] schema.

---

### Learning: Comprehensive Health Check
**Issue:** Potential drift in agent rules/skills after system updates.
**Diagnosis:** Audited `.agent/rules/` and `.agent/skills/` during Nexus activation.
**Fix:** Sync'd skill metadata and verified rule consistency with `Nexus Standard`.
**Metrics:** 100% of skills now have correct metadata; zero inconsistent core rules found.

**Example:**
```markdown
### Mistake: Forgot 'use client' Directive
**Date:** 2026-01-15
**What Happened:** Component using useState crashed with hydration error
**Root Cause:** Next.js 15 defaults to Server Components
**Solution:** Added 'use client' at the top of the file
**Prevention:** Always check if component uses hooks/browser APIs
```

---

## 🔄 Refactoring Insights

### Refactoring: [Title]
**Date:** YYYY-MM-DD  
**Original Approach:** What was done initially  
**Problem:** Why it didn't work  
**New Approach:** How it was improved  
**Impact:** Measurable improvements

---

## ⚠️ Anti-Patterns Discovered

### Anti-Pattern: [Title]
**Description:** What it looks like  
**Why It's Bad:** Consequences  
**Better Alternative:** Recommended approach

---

## 🎯 Performance Learnings

### Learning: [Title]
**Issue:** Performance problem  
**Diagnosis:** How identified  
**Fix:** What was done  
**Metrics:** Before/after measurements

---

## 🔐 Security Incidents

### Incident: [Title]
**Date:** YYYY-MM-DD  
**What Happened:** Security issue  
**Severity:** [Low/Medium/High/Critical]  
**Resolution:** How fixed  
**Prevention:** Measures to prevent recurrence

---

## 📚 Third-Party Library Experiences

### Library: [Name]
**Tried For:** What problem it solved  
**Experience:** What worked/didn't  
**Verdict:** Keep/Replace/Avoid  
**Alternative:** If replaced, what was used

---

## 👥 Team Preferences

- **Code Comments:** [Language preference, when to comment]
- **Testing Philosophy:** [What gets tested, coverage goals]
- **Deployment Strategy:** [How and when to deploy]
- **Communication:** [Documentation standards]
