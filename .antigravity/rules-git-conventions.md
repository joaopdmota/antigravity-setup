# Git & Workflow Conventions

> Padrões para commits, branches e fluxo de trabalho com Git.

---

## 📝 Commits (Conventional Commits)

Seguimos o padrão [Conventional Commits](https://www.conventionalcommits.org/):

- `feat`: Uma nova funcionalidade.
- `fix`: Correção de um bug.
- `docs`: Alterações na documentação.
- `style`: Alterações que não afetam o significado do código (espaços, formatação).
- `refactor`: Alteração de código que não corrige bug nem adiciona funcionalidade.
- `perf`: Melhoria de performance.
- `test`: Adição ou correção de testes.
- `chore`: Atualização de tarefas de build, dependências, etc.

**Exemplo:** `feat(auth): add login with google oauth2`

---

## 🌿 Branches

- **Naming Pattern**: `tipo/descrição-curta`
  - `feature/user-auth`
  - `bugfix/issue-header-zindex`
  - `hotfix/critical-security-patch`
- **Main Branch**: Protegida. Deploys apenas via Pull Request aprovado.

---

## 🔄 Workflow

1. **Update**: Sempre faça `git pull --rebase` antes de começar.
2. **Branch**: Crie a branch a partir da `develop` ou `main`.
3. **Draft PR**: Abra um Draft PR cedo para visibilidade.
4. **Squash & Merge**: Prefira squash ao fazer merge para manter o histórico da main limpo.

---

**Última atualização:** 2026-01-16  
**Versão:** 1.0
