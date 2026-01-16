# Go (Golang) Development Rules

> Padrões, convenções e boas práticas para desenvolvimento em Go no ecossistema Antigravity.

---

## 🏗️ Estrutura de Projeto

Seguimos o [Standard Go Project Layout](https://github.com/golang-standards/project-layout):

- `/cmd`: Entry points da aplicação (ex: `cmd/api/main.go`).
- `/internal`: Código privado da aplicação (logic, storage, etc).
- `/pkg`: Código que pode ser importado por outros projetos.
- `/api`: Definições de contrato (Protos, OpenAPI).
- `/configs`: Arquivos de configuração e templates.
- `/deploy`: Scripts de deployment (Docker, K8s).

---

## 💻 Padrões de Código

### Erros
- **Check immediately**: Verifique o erro assim que ele ocorrer.
- **Wrap errors**: Use `%w` com `fmt.Errorf` para adicionar contexto sem perder o tipo original.
- **No Panic**: Nunca use `panic` para fluxo de erro normal. Use apenas para erros catastróficos de inicialização.
- **Custom Errors**: Defina erros em variáveis (Ex: `var ErrNotFound = errors.New("not found")`).

### Nomenclatura
- **Interfaces**: Sufixo `-er` para interfaces com um único método (Ex: `Reader`, `Writer`).
- **Variables**: Use `camelCase`. Variáveis curtas são aceitas se o escopo for pequeno (Ex: `i` para index).
- **Public/Private**: PascalCase para exportados, camelCase para internos.

### Concorrência
- **Goroutines**: Sempre saiba como uma goroutine vai terminar. Evite goroutine leaks.
- **Channels**: Use para orquestração, `sync.Mutex` para proteção de estado simples.
- **Context**: Sempre passe `context.Context` como primeiro argumento em funções de I/O ou processamento longo.

---

## 🏛️ Arquitetura (Clean Architecture / Hexagonal)

1. **Domain/Entity**: Regras de negócio puras, sem dependências externas.
2. **Usecase/Service**: Orquestração da lógica de negócio.
3. **Repository/Adapter**: Implementação de acesso a dados (DB, Redis, APIs externas).
4. **Delivery/Handler**: Camada de entrada (HTTP, gRPC, CLI).

**Dependency Injection**: Manual ou usando `Google Wire`. Injetar dependências via construtor (`New...`).

---

## 🧪 Testes

- **Table-Driven Tests**: Use para testar múltiplos cenários de forma limpa.
- **Internal vs External**: Use `package_test` para testes de integração (caixa preta) e `package` para unitários (caixa branca).
- **Mocks**: Use interfaces para mockar dependências. Ferramentas: `mockery` ou `golang/mock`.
- **Assertions**: Use `testify/assert` ou `testify/require`.

---

## 🛠️ Tooling & Linter

- **Linter**: `golangci-lint` é obrigatório.
- **Format**: `gofmt` ou `goimports` no save.
- **Modules**: Use `go mod` para gestão de dependências.
- **Makefiles**: Use `Makefile` para automatizar tarefas comuns (`build`, `test`, `lint`, `migrate`).

---

## 🚀 Performance & Tips

- **Pre-allocate**: Use `make([]T, 0, capacity)` para slices se o tamanho final for conhecido.
- **Pointers**: Use ponteiros para structs grandes ou quando precisar mutar o estado. Para tipos básicos e structs pequenas, prefira valor.
- **Standard Library**: Explore a `stdlib` antes de adicionar dependências externas. Go tem uma das melhores bibliotecas padrão.

---

**Última atualização:** 2026-01-16  
**Versão:** 1.0
