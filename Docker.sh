
## Remove stopped Docker containers 
docker rm $(docker ps -q -f status=exited)

## Remove all untagged docker images
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi

# Delete all containers
docker rm $(docker ps -a -q)

# Delete all images
docker rmi $(docker images -q)

# Delete dangling volumes
docker volume rm $(docker volume ls -qf dangling=true)
