# SAP_HW Example Task (Config + argocd)

Repo for the helm chart.

4. Install argocd
    https://argo-cd.readthedocs.io/en/stable/getting_started/
    kubectl create namespace argocd
    kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
    kubectl get services -n argocd
    minikube service argocd-server -n argocd
    username: admin
    kubectl get secret argocd-initial-admin-secret -n argocd -o yaml
    echo <pw> | base64 --decode
    echo TU4wZnZIa3JaY3JYREN2Wg== | base64 --decode
    (%not needed)

5. Configure argoCD
    https://argo-cd.readthedocs.io/en/stable/operator-manual/declarative-setup/
    create application.yaml
    setup github, + relativ path
    kubectl apply -f application.yaml

    Test (endpoint is reacable) minikube service flask-app-sap-service -n myflaskapp-namespace   (/read_file)
    Push commit to git (change replicaset from 2-3) -> check argocd UI -> argocd apply the change automatically

