# DevOps Infrastructure Repository

![CI](https://github.com/imtosya/devops-infrastructure/actions/workflows/ci.yml/badge.svg)

Учебный проект по Git & GitHub для DevOps: инфраструктура как код.
Репозиторий содержит конфигурации для Docker, Terraform, Kubernetes, Ansible, Prometheus и CI/CD через GitHub Actions.

## Технологии

**Технологии:** Docker, Terraform, Kubernetes

Также используются: Ansible, Prometheus, GitHub Actions.

## Структура проекта

    infrastructure/
    ├── terraform/      # main.tf, variables.tf: nginx-контейнер через Docker provider
    ├── ansible/        # playbook.yml: установка и запуск nginx
    ├── kubernetes/     # deployment.yaml, service.yaml
    ├── docker/         # Dockerfile и демо-страница
    ├── monitoring/     # prometheus.yml
    ├── docs/           # DEPLOYMENT.md
    ├── .github/workflows/ci.yml
    ├── .gitignore
    └── README.md

## Быстрый старт

    git clone https://github.com/imtosya/devops-infrastructure.git
    cd devops-infrastructure
    docker build -t devops-demo:1.0 ./docker
    docker run -d -p 8080:80 devops-demo:1.0

Откройте http://localhost:8080

Подробные инструкции по развёртыванию: [docs/DEPLOYMENT.md](docs/DEPLOYMENT.md)

## CI/CD

GitHub Actions при каждом push и Pull Request в `main`:
- собирает Docker-образ;
- проверяет Terraform-конфигурацию (`terraform init` и `terraform validate`).

## Git workflow

- `main` — стабильная ветка, изменения вносятся только через Pull Request.
- Ветки называются по шаблону `feature/<описание>` и `docs/<описание>`.
- Сообщения коммитов в стиле Conventional Commits: `feat:`, `docs:`, `ci:`, `chore:`, `merge:`.

## Автор

Aiturgan (GitHub: [imtosya](https://github.com/imtosya))