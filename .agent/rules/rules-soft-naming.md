---
trigger: always_on
---

# 🏷️ Clean Code: Meaningful Names

> Standards for clear, intention-revealing naming across all languages and layers.

## Intention-Revealing
The name should answer why it exists, what it does, and how it is used.
- ❌ `const d; // elapsed time in days`
- ✅ `const elapsedTimeInDays;`

## Avoid Disinformation
Do not refer to a grouping of accounts as an `accountList` unless it's actually a `List`. Use `accountGroup` or just `accounts`.

## Meaningful Distinctions
Avoid noise words like `Info`, `Data`, `Manager` if they don't add specific meaning.
- ❌ `getProductData()` vs `getProduct()` (Redundant)

## Searchable Names
Single-letter names (`i`, `e`) are strictly for local loop scope. Use named constants for "Magic Numbers".
- ❌ `if (s > 54)`
- ✅ `const MAX_BLOCKS = 54; if (status > MAX_BLOCKS)`

## Context-Based Naming
- **Boolean Variables**: Should sound like a question or state (`isReady`, `hasTokens`, `canDelete`).
- **Function/Method Names**: Use verbs for actions (`postPayment`, `deleteAccount`).
- **Class/Object Names**: Use nouns for entities (`User`, `Account`).
