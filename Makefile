create:
	k3d cluster create --k3s-server-arg "--no-deploy=traefik" -p "8081:80@loadbalancer" 

delete:
	k3d cluster delete

install:
	helmfile apply

uninstall:
	helmfile destroy
