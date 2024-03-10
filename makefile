install_argo:
	kubectl create namespace argocd
	kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

configure_argo:
	kubectl apply -f application.yaml

delete_argo:
	kubectl delete all --all -n argocd
	kubectl delete namespace argocd

open_argoui:
	minikube service argocd-server -n argocd

test_delete_dev0:
	kubectl delete all --all -n myflaskapp-dev0

test_delete_dev1:
	kubectl delete all --all -n myflaskapp-dev1