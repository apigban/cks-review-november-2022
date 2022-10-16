# Running kubebench using docker on a specific node will check that specific node
# version is determined by mounting the kubctl binary and appending version number
# at the end of the docker command -> --version 1.24

docker run --pid=host -v /etc:/etc:ro -v /var:/var:ro -t -v /usr/bin/kubectl:/usr/local/mount-from-host/bin/kubectl docker.io/aquasec/kube-bench:latest --version 1.24


# Run kube-bench as installed on master node
    # see all
kube-bench run --targets master
    # or just see the one
kube-bench run --targets master --check 1.2.25

# Running kubebench using kubernetes as a pod
# master_bench.yaml