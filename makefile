install_argo:
	kubectl create namespace argocd
	kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

configure_argo:
	kubectl apply -f application.yaml

delete_argo:
	kubectl delete namespace argocd
	kubectl delete all --all -n argocd

open_argoui:
	minikube service argocd-server -n argocd