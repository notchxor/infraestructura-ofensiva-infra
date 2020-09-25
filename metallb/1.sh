ko apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
ko apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml

ko create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

ko apply -f 2-configmap.yaml
