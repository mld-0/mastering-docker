#	{{{3
#   vim: set tabstop=4 modeline modelines=10:
#   vim: set foldlevel=2 foldcolumn=2 foldmethod=marker:
#	{{{2

#	Docker is a solution to the "it works on my machine" problem
#	It allows code to be run in containers which provide a consistent environment between systems
#	These containers comes with significantly less overhead than virtual machines

#	Verify Docker is installed and running (note this is different from 'docker --version')
#>$		docker version

#	Verify Docker composer is installed
#>$		docker-compose version

#	Help:
#>$		docker help
#>$		docker <COMMAND> --help

#	Docker for macOS by default keeps images at:
#		~/Library/Containers/com.docker.docker/Data/vms/0/data

#	<(View the size of (running) images with: 'docker container ls -s')>


#	<(running containers requires Docker <Desktop/service> to be running)>


#	Run hello-world container:
#>$		docker container run hello-world
#	This will download the hello world container if it is not found and run it
#	This container will print the welcome message and exit


#	Create NGINX (web server) container:
#>$		docker image pull nginx
#>$		docker container run -d --name nginx-test -p 8080:80 nginx
#	(or start the already existing container with)
#>$		docker container run nginx
#	With this container running we can connected to the server at 'http://localhost:8080/'
#	Stop the container with
#>$		docker container stop nginx-test
#	And delete it with
#>$		docker container rm nginx-test

