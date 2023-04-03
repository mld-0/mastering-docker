#	{{{3
#   vim: set tabstop=4 modeline modelines=10:
#   vim: set foldlevel=2 foldcolumn=2 foldmethod=marker:
#	{{{2
#	Notes:
#	{{{
#	2023-04-03T19:08:06AEST book using angled quotes in dockerfiles?
#	}}}

#	Alpine Linux is a distribution optimised for security and small size
#	It is the default image for official containers supplied by Docker


#	A Docker file is used with 'docker image build' to assemble a container image

#	Example Docker file:
#	========================================
#	FROM alpine:latest
#	LABEL maintainer="Russ McKendrick <russ@mckendrick.io>"
#	LABEL description="This example Dockerfile installs NGINX."
#	RUN apk add --update nginx && \
#		rm -rf /var/cache/apk/* && \
#		mkdir -p /tmp/nginx/
#	COPY files/nginx.conf /etc/nginx/nginx.conf
#	COPY files/default.conf /etc/nginx/conf.d/default.conf
#	ADD files/html.tar.gz /usr/share/nginx/
#	EXPOSE 80/tcp
#	ENTRYPOINT ["nginx"]
#	CMD ["-g", "daemon off;"]
#	========================================

#	Labels:
#
#	FROM
#	Which base to use for the image
#
#	LABEL
#	Used to add extra information to the image
#	View a containers labels with 'docker image inspect $IMAGE_ID'
#	(keep labels to just metadata about the image)
#
#	RUN
#	Interact with our image to perform tasks
#	Use '&&' to run another command if the previous command was successful
#	(multiple 'RUN' labels with multiple commands can be specified instead)
#
#	COPY
#	Copies from the 'files' directory we are building our image on
#	(this will overwrite any existing files)
#
#	ADD
#	Like 'COPY', but automatically uncompress any archived files 
#	Also downloads any remote files (remote files are not uncompressed)
#	
#	EXPOSE
#	Port/protocol to expose at runtime
#	(does not map the port to the host machine; instead opens the port on the container network)
#
#	ENTRYPOINT / CMD
#	Use together to specify a default command to be executed inside the container
#	Use 'ENTRYPOINT' without 'CMD' for a container intended to be executable
#
#	USER
#	Specify username to be used when a command is run
#	(user must exist. can cause permission issues in container/mounted-volumes)
#
#	WORKDIR
#	Set working directory for commands 'USER' can run ('RUN', 'CMD', 'ENTRYPOINT')
#
#	ONBUILD
#	Commands to be used when image is used as a base for another container
#
#	ENV
#	Set ENV within the image both when it is built and when it is executed


#	Best practices:
#			Use a '.dockerignore' file
#			Only have one Dockerfile per folder
#			Use a version control system for Dockerfiles
#			Minimise number of packages installed per image
#			Only one application process per container
#			Keep things simple



#	Building: 'docker image build'
#	The '--file' switch is usually not supplied since the command should be run from the same dir the Dockerfile is in
#	All filers/directories in the build folder are included, unless they are excluded by a dockerignore file


