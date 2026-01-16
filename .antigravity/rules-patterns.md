# Microservices Design Patterns & Architecture Rules

> Princípios, padrões e diretrizes para arquitetura de microserviços no ecossistema Antigravity.

---

## 🏗️ Princípios Fundamentais

1. **Single Responsibility**: Cada serviço possui uma única responsabilidade de negócio clara (Bounded Context).
2. **Autonomous**: Serviços devem ser independentes para deploy, escala e falha.
3. **API First**: O contrato da API (gRPC proto, OpenAPI, AsyncAPI) deve ser definido antes da implementação.
4. **Resilience**: Design para falhas (Circuit Breaker, Retries, Timeouts).
5. **Observability**: Todo serviço deve ser visível (Logs, Metrics, Traces).

---

## 📡 Comunicação entre Serviços

### Síncrona (Internal)
- **Protocolo**: gRPC é preferido para comunicação service-to-service devido à performance e tipos fortes.
- **Service Discovery**: Usar o mecanismo nativo do orquestrador (Ex: Kubernetes DNS).

### Síncrona (External/Public)
- **Protocolo**: REST/JSON (OpenAPI).
- **Gateway**: Toda comunicação externa deve passar por um API Gateway.

### Assíncrona (Event-Driven)
- **Protocolo**: NATS, RabbitMQ ou Kafka.
- **Padrão**: Event Sourcing ou Transactional Outbox para garantir consistência eventual.
- **Idempotência**: Todo consumidor de eventos DEVE ser idempotente.

---

## 🛠️ Padrões de Resiliência

- **Retries**: Implementar retries com Exponential Backoff e Jitter.
- **Circuit Breaker**: Proteger serviços dependentes de falhas em cascata.
- **Timeouts**: Todo request externo DEVE ter um timeout definido.
- **Dead Letter Queues (DLQ)**: Mensagens que falham permanentemente devem ir para uma DLQ.

---

## 📊 Observabilidade (The Three Pillars)

### 1. Logs
- **Formato**: JSON (Structured Logging).
- **Conteúdo**: Deve incluir `trace_id`, `service_name`, `severity`, `timestamp`.
- **Nível**: `info` em produção, `debug` apenas em desenvolvimento/staging.

### 2. Métricas
- **Exposição**: Endpoint `/metrics` para Prometheus.
- **Padrões**: RED (Rate, Errors, Duration) para serviços e USE (Utilization, Saturation, Errors) para recursos.

### 3. Tracing
- **Padrão**: OpenTelemetry.
- **Propagação**: Contexto de trace deve ser propagado em todas as chamadas (HTTP, gRPC, Pub/Sub).

---

## 🔒 Segurança

- **mTLS**: Usar para comunicação interna entre pods sempre que possível.
- **JWT**: Para autenticação de usuários finais.
- **Secrets Management**: Nunca colocar segredos em variáveis de ambiente planas ou arquivos de config. Usar Vault ou Kubernetes Secrets.
- **Least Privilege**: Serviços devem rodar com o mínimo de permissões necessárias.

---

## 💾 Gestão de Dados

- **Database per Service**: Cada microserviço tem sua própria base de dados. Nunca compartilhar banco entre serviços.
- **Migrations**: Controle de versão de esquema obrigatório (Ex: Flyway, Liquibase, Atlas).
- **CQRS**: Considerar para leitura complexa que envolve múltiplos agregados.

---

## 🚀 Deployment & DevOps

- **Infrastructure as Code (IaC)**: Terraform ou Pulumi.
- **Containerization**: Docker multi-stage builds para imagens enxutas.
- **CI/CD**: Deploys automatizados com testes de integração e análise estática.
- **Health Checks**: Implementar `/health/live` e `/health/ready`.

---

**Última atualização:** 2026-01-16  
**Versão:** 1.0
