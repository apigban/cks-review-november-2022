# if kubelet is being asked

# locate binary
which kubelet

# get sha512
sha512sum /usr/bin/kubelet

# if a binary is inside a container, for example, kubeapi-server
    # determine process id
ps aux | grep kube-apiserver

    # navigate to host's proc directory, access root
ls /proc/<pID>
ls /proc/<pID>/root

    # find kube-apiserver
find /proc/<pID>/root | grep kube-apiserver

    # use hosts sha512sum
sha512sum /proc/<pID>/root/usr/local/bin/kube-apiserver