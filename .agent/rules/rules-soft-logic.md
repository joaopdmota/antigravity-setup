---
trigger: always_on
---

# 🧩 Clean Code: Logic & Functions

> Standards for writing focused, reliable, and expressive code logic.

## Functions (SRP)
Functions should do **one thing**. They should do it well. They should do it only.
- **Small**: Aim for < 20 lines.
- **Niladic (> Monadic > Dyadic)**: Favor fewer arguments. 3+ arguments must be wrapped in an object.
- **No Side Effects**: A function must not have hidden effects (don't "lie" in the function name).

## Abstraction Levels
One level of abstraction per function. Don't mix low-level URL building with high-level business logic.

## Error Handling
- **Exceptions over Return Codes**: Use Try/Catch (or idiomatic Go error wrapping) to keep logic clean.
- **Don't Return/Pass Null**: Avoid creating "Null Pointer Checks" for the caller. Return empty collections or throw errors.

## Conditionals
- **Encapsulate Conditions**: `if (shouldBeDeleted(timer))` is better than a complex boolean expression.
- **Guard Clauses**: Return early to reduce nesting and cognitive load.
- **Switch Statements**: Bury them deep inside factories to prevent spread.

## Comments
Comments should explain **Why**, not **How**. 
- ❌ `i++ // increment i`
- ✅ `// Required due to legacy API offset constraint`
- **Delete Dead Code**: Commented-out code must be deleted immediately. Git history is for storage.
