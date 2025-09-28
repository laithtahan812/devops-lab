## DevOps Lab – Summary
- Docker: build & push image `laith313/devops-lab:latest`
- CI/CD: GitHub Actions builds & pushes on main
- Kubernetes (Minikube): deployment + NodePort service
- Terraform: geo-block on registry.terraform.io → used terraform-sim scripts to run on 8082 (apply/destroy)
- Ansible: install/start nginx via Homebrew

### Run
Docker local: `docker run -d -p 8080:80 laith313/devops-lab:latest`  
K8s: `kubectl apply -f k8s/ && minikube service devops-lab-svc --url`  
Terraform-sim:  
- `./terraform-sim/apply.sh` → http://localhost:8082  
- `./terraform-sim/destroy.sh`

Ansible:  
`ansible-playbook -i ansible/inventory.ini ansible/nginx_install.yml`
