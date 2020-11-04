create:
	k3d cluster create --k3s-server-arg "--no-deploy=traefik" -p "8080:80@loadbalancer" -p "8443:443@loadbalancer" 

delete:
	k3d cluster delete

install:
	helmfile apply

uninstall:
	helmfile destroy
