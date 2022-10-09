# Frontend
kubectl run frontend --image=nginx
kubectl expose pod frontend --port 80

# Backend
kubectl run backend -- image=nginx
kubectl expose pod backend --port 80

# Verify Services and pods
kubectl get services
kubectl get pods