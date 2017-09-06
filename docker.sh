hlp_docker_rm_all () {
	docker ps -a | grep -v IMAGE | awk '{print $1}' | xargs docker rm 
	docker images | grep -v IMAGE | awk '{print $3}' | xargs docker rmi
}
