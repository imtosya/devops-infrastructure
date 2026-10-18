# Deployment Guide

## 1. Docker

    docker build -t devops-demo:1.0 ./docker
    docker run -d -p 8080:80 devops-demo:1.0

Откройте http://localhost:8080

## 2. Terraform

    cd terraform
    terraform init
    terraform plan
    terraform apply

Страница будет доступна на http://localhost:8081

Удалить ресурсы:

    terraform destroy

## 3. Kubernetes (minikube)

    minikube start
    minikube image load devops-demo:1.0
    kubectl apply -f kubernetes/
    minikube service devops-demo --url

## 4. Ansible

    ansible-playbook -i inventory.ini ansible/playbook.yml

В файле inventory.ini должна быть группа [webservers] с вашими серверами.

## 5. Monitoring (Prometheus)

    docker run -d -p 9090:9090 -v "$(pwd)/monitoring/prometheus.yml:/etc/prometheus/prometheus.yml" prom/prometheus

Откройте http://localhost:9090