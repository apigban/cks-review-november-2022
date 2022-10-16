# using the Dockerfile,
# specify 0th stage as ubuntu focal
# specify package golang-go to be version 1.13
# specify built image is alpine v3.16.2, instead of using latest
# avoid using root user
# Remove write access to /etc directory
# remove shell access
docker build -t app .

# use multistage Docker file, Dockerfile-small to create an image with <10MB filesize
# 0th stage == FROM ubuntu
# 1st stage == From alpine, copy compile go app from initial stage, only the last stage 
# is contained in the resulting image



# root@cks-master:~/05-imagefootprint# docker image list | grep app
# app-small            latest    34620a3d3b13   9 seconds ago   7.41MB
# app                  latest    b4d148ddef63   7 minutes ago   858MB