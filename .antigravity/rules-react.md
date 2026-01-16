# React Development Rules

> Padrões, convenções e boas práticas para desenvolvimento de interfaces com React.

---

## 🏗️ Estrutura de Componentes

- **Functional Components Only**: O uso de Class Components é proibido.
- **Atomic Design / Feature Based**: Componentes devem ser organizados por complexidade (atoms, molecules) ou por funcionalidade (features).
- **One Component per File**: Cada arquivo deve conter apenas um componente exportado.
- **Naming**: Use `PascalCase` para componentes e `camelCase` para arquivos que não são componentes.

---

## 🎣 Hooks & Estado

- **Custom Hooks**: Extraia lógicas complexas de efeitos ou estados para hooks customizados (`useProjectData`, `useAuth`).
- **Standard Hooks**: Respeite as regras oficiais (não usar dentro de loops ou condicionais).
- **State Management**:
  - Estado Local: `useState` / `useReducer`.
  - Estado Global: Context API ou Zustand (preferido pela simplicidade).
  - Server State: Use React Query (TanStack Query) para caching e sincronização de dados da API.

---

## ⚡ Performance

- **Memoization**: Use `useMemo` e `useCallback` apenas quando necessário (processamento pesado ou dependências de efeitos).
- **Controlled vs Uncontrolled**: Prefira componentes controlados para formulários simples, e `react-hook-form` para formulários complexos.
- **Code Splitting**: Use `React.lazy` e `Suspense` para carregar rotas ou componentes pesados apenas quando necessário.

---

## 🎨 UI & Props

- **Composition**: Prefira composição de componentes (usando `children`) a passar dezenas de props de configuração.
- **Strict Typing**: Use interfaces TypeScript para todas as props de componentes. Evite `PropsWithChildren` se quiser ser específico sobre o que recebe.
- **Destructuring**: Sempre faça destructuring das props na assinatura da função.

---

## 🧪 Testes de UI

- **User-Centric**: Teste o comportamento (o que o usuário vê), não a implementação interna.
- **Testing Library**: Use `@testing-library/react`.
- **Accessibility (a11y)**: Teste a acessibilidade usando seletores como `getByRole`, `getByLabelText`.

---

**Última atualização:** 2026-01-16  
**Versão:** 1.0
