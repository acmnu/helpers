hlp_docker_rm_containers () {
	docker ps -a | grep -v IMAGE | awk '{print $1}' | xargs docker rm 
}

hlp_docker_rm_all () {
	hlp_docker_rm_containers
	docker images | grep -v IMAGE | awk '{print $3}' | xargs docker rmi
}

hlp_docker_stop_all () {
	docker ps -a | grep -v IMAGE | awk '{print $1}' | xargs docker stop 
}

hlp_docker_rm_none_image() {
    docker images | awk 'NR == 1 {next} /none/ {print $3}' | xargs docker rmi
}
