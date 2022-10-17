# list all images used by active pods in a namespace and output to kube-system_images.txt
kubectl describe pod -n kube-system |grep "Image:" |awk '{print $2}' > kube-system_images.txt

# run trivy docker container, vuln scan images listed in  kube-system_images.txt