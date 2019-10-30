name "docker_server"
description "a windows server that have all of the docker software necessary for managing and running docker containers"
run_list "recipe[chef-windows::enable_containers]"
