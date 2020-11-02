create:
	k3d cluster create -p "8081:80@loadbalancer" 

delete:
	k3d cluster delete

install:
	helm install pgadmin pgadmin-chart

uninstall:
	helm delete pgadmin
