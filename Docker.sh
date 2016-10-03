
## Remove stopped Docker containers 
docker rm $(docker ps -q -f status=exited)

## Remove all untagged docker images
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
