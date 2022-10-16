# using the Dockerfile, resulting image size is >700MB
docker build -t app .

# use multistage Docker file, Dockerfile-small to create an image with <10MB filesize
# 0th stage == FROM ubuntu
# 1st stage == From alpine, copy compile go app from initial stage, only the last stage 
# is contained in the resulting image
docker build --file Dockerfile-small -t app-small .


# root@cks-master:~/05-imagefootprint# docker image list | grep app
# app-small            latest    34620a3d3b13   9 seconds ago   7.41MB
# app                  latest    b4d148ddef63   7 minutes ago   858MB