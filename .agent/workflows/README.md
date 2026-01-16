---
description: 
---

# Sistema de Workflows - Mega Mente

Sistema de orquestração de desenvolvimento para o projeto **Flete Backend API**.

## 📁 Estrutura

```
.antigravity/
├── rules.md                      # Regras e padrões do projeto
└── workflows/
    ├── mega-mente.md             # Orquestrador principal
    └── subagents/
        ├── planner.md            # Planejamento técnico
        ├── task-manager.md       # Decomposição de tarefas
        └── reviewer.md           # Revisão de código
```

## 🎯 Agentes

### 1. Mega Mente (Principal)
- **Arquivo:** `mega-mente.md`
- **Responsabilidade:** Orquestrar todo o workflow de desenvolvimento
- **Quando usar:** Para qualquer nova implementação

### 2. Planning Agent
- **Arquivo:** `subagents/planner.md`
- **Responsabilidade:** Criar planos técnicos detalhados
- **Output:** `implementation_plan.md`

### 3. Task Manager
- **Arquivo:** `subagents/task-manager.md`
- **Responsabilidade:** Decompor planos em tarefas atômicas
- **Output:** `task.md`

### 4. Reviewer
- **Arquivo:** `subagents/reviewer.md`
- **Responsabilidade:** Revisar código e garantir qualidade
- **Output:** `code_review.md`

## 🔄 Fluxo de Trabalho

```
[SOLICITAÇÃO]
     ↓
[Mega Mente] → Delega para Planning Agent
     ↓
[Planning Agent] → Cria implementation_plan.md
     ↓
[Usuário] → Aprova plano
     ↓
[Mega Mente] → Delega para Task Manager
     ↓
[Task Manager] → Cria task.md
     ↓
[Mega Mente] → Implementa seguindo task.md
     ↓
[Mega Mente] → Delega para Reviewer
     ↓
[Reviewer] → Revisa e aprova
     ↓
[Mega Mente] → Cria walkthrough.md
     ↓
[CONCLUSÃO]
```

## 📋 Ordem de Implementação Garantida

1. **Database** - Migrations
2. **Model** - Eloquent Models + Factories
3. **DTO** - Data Transfer Objects
4. **Repository** - Interface + Implementation + Binding
5. **Service** - Business Logic
6. **Controller** - Thin Orchestration Layer
7. **Routes** - API Endpoints
8. **Tests Unit** - 100% Mocks
9. **Tests Feature** - DatabaseTransactions
10. **Quality** - Format + Static + Coverage

## ✅ Garantias de Qualidade

Cada implementação garante:

- ✅ **Clean Architecture** respeitada
- ✅ **100% testes** passando
- ✅ **Cobertura** ≥ 100% linhas novas
- ✅ **Type safety** completa
- ✅ **Conformidade** com `.antigravity/rules.md`

## 🎓 Características Especiais

### Planning Agent
- Mapeia codebase existente
- Identifica padrões do projeto
- Cria planos executáveis
- Alinhado com Clean Architecture

### Task Manager
- Tarefas atômicas e testáveis
- Ordem de dependências clara
- Critérios de aceite mensuráveis
- Checklist executável

### Reviewer
- Verifica arquitetura Clean
- Valida type safety
- Detecta code smells
- Analisa segurança
- Sugere melhorias

## 🚀 Como Usar

### Para nova feature:
```
"Quero implementar [FEATURE X]"
→ Mega Mente orquestra automaticamente
```

### Para bug fix:
```
"Corrigir [BUG Y]"
→ Mega Mente analisa e implementa
```

### Para refatoração:
```
"Refatorar [COMPONENTE Z]"
→ Mega Mente planeja e executa
```

## 📊 Métricas de Sucesso

- **Tempo de planejamento:** ~5-10 min
- **Implementação:** Depende da complexidade
- **Revisão:** ~5 min
- **Qualidade:** 100% conformidade

## 🔧 Comandos Integrados

O sistema usa os comandos do Makefile:

```bash
make format          # Formatação automática
make static          # Análise estática
make test            # Suite de testes
make test-unit       # Testes unitários
make test-feature    # Testes de integração
```

---

**Versão:** 1.0  
**Última atualização:** 2026-01-13  