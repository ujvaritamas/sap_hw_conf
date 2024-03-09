# SAP_HW Example Task (Configuration)

## Presteps

1. Install helm
    ```bash
    /opt/homebrew/bin/brew install helm
    /opt/homebrew/bin/brew list helm
    alias helm='/opt/homebrew/Cellar/helm/3.14.2/bin/helm'

2. Create default
    ```bash
    helm create flask-app-chart

3. Create service, deployment, configmap (without helm feautres) + test minikube env
    reach the app endpoint: minikube service <service name> -n <namespace>, then http://<ip>:<port>/read_file

3. Test it with helm chart (after values.yaml created)
    helm upgrade flask-app-sap ./ --values values.yaml  (helm install... if first call)
    minikube service flask-app-sap-service
    http://<ip>:<port>/read_file

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

