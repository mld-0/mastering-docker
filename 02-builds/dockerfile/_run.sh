#	Build image in current directory
docker image build --tag local:example-nginx-dockerfile .
#	(result is 9.2MB)

#	Check whether image is available
docker image ls

#	Launch container with new image
docker container run -d --name example-nginx-dockerfile -p 8080:80 local:example-nginx-dockerfile
#	(can't create new container with same name as existing container)

#	Check whether container is running
docker container ls

#	Open webserver page
open "http://localhost:8080/"

#	<(Get NGINX version (and exit?))>
docker container run --name example-nginx-getversion local:example-nginx-dockerfile -v

#	Display <image/container> labels
docker image inspect -f {{.Config.Labels}} local:example-nginx-dockerfile

#	Stop running container 
docker container stop example-nginx-dockerfile
#	<('example-nginx-getversion' doesn't need to be stopped?)>

#	Remote containers
docker container rm example-nginx-dockerfile example-nginx-getversion

