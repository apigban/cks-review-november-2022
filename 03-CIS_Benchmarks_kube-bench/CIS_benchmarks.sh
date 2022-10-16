# Running kubebench using docker on a specific node will check that specific node
# version is determined by mounting the kubctl binary and appending version number
# at the end of the docker command -> --version 1.24

docker run --pid=host -v /etc:/etc:ro -v /var:/var:ro -t -v /usr/bin/kubectl:/usr/local/mount-from-host/bin/kubectl docker.io/aquasec/kube-bench:latest --version 1.24