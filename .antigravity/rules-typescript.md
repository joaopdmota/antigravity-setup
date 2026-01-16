# TypeScript/JavaScript Development Rules

> Padrões, convenções e boas práticas para desenvolvimento TypeScript e JavaScript no ecossistema Antigravity.

---

## 🏗️ Configuração & Strictness

- **Strict Mode**: `strict: true` no `tsconfig.json` é obrigatório.
- **No Any**: O uso de `any` é proibido. Use `unknown` se o tipo for incerto e faça type narrowing.
- **ES Modules**: Use ESM (`import/export`) em vez de CommonJS (`require`).

---

## 💻 Padrões de Código

### Tipagem
- **Interfaces vs Types**: Use `interface` para objetos que podem ser estendidos e `type` para uniões, tuplas ou tipos complexos.
- **Utility Types**: Aproveite `Partial`, `Pick`, `Omit`, `Readonly`, etc.
- **Discriminated Unions**: Use para modelos de dados que podem ter múltiplos estados (Ex: Result types).

### Funções & Async
- **Async/Await**: Sempre prefira `async/await` a `.then()/.catch()`.
- **Arrow Functions**: Use para funções anônimas ou callbacks.
- **Functional patterns**: Prefira métodos de array imutáveis (`map`, `filter`, `reduce`) a loops `for/forEach`.

### Nomenclatura
- **Files**: `kebab-case.ts` ou `PascalCase.tsx` para componentes React.
- **Types/Interfaces**: `PascalCase`. Não use o prefixo `I` (Ex: use `User` em vez de `IUser`).
- **Variables/Functions**: `camelCase`.

---

## 🏛️ Arquitetura (Micro-Frontends / Monorepo)

- **Feature-Based Structure**: Organize por funcionalidade, não por tipo técnico (Ex: `/features/auth` em vez de `/controllers/auth`).
- **Layers**:
  - `Domain/Models`: Interfaces de dados.
  - `Services/API`: Chamadas externas e lógica de persistência.
  - `Components/Views`: UI e estado local.
  - `Hooks/State`: Gerenciamento de estado global ou complexo.

---

## 🧪 Testes

- **Test Runner**: Vitest (preferido pela velocidade) ou Jest.
- **Testing Library**: Para testes de componentes UI.
- **Mocks**: Use `msw` (Mock Service Worker) para interceptar chamadas de rede em testes.
- **Coverage**: Mantenha uma cobertura alta em lógicas críticas de negócio.

---

## 🛠️ Tooling & Linting

- **Eslint**: Use o plugin `@typescript-eslint/recommended`.
- **Prettier**: Para formatação automática.
- **Package Manager**: `pnpm` (preferido pelo monorepo) ou `npm`.
- **Path Aliases**: Use `@/` para o diretório root (`src/`).

---

## 🚀 Performance & Tips

- **Tree Shaking**: Certifique-se de importar apenas o necessário de bibliotecas grandes.
- **Immutability**: Nunca mude o estado diretamente. Use o spread operator `...` ou bibliotecas como `immer`.
- **Error Handling**: Use blocos `try/catch` em operações assíncronas e crie classes de erro customizadas se necessário.

---

**Última atualização:** 2026-01-16  
**Versão:** 1.0
