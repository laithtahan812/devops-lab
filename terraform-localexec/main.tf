terraform {}

resource "null_resource" "run_container" {
  provisioner "local-exec" {
    command = "docker rm -f tf-devops-lab 2>/dev/null || true && docker run -d -p 8082:80 --name tf-devops-lab laith313/devops-lab:latest"
  }
  provisioner "local-exec" {
    when    = destroy
    command = "docker rm -f tf-devops-lab 2>/dev/null || true"
  }
}
