# SAP_HW Example Task (Helm)

## Steps

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



