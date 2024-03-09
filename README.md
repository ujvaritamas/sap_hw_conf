# sap_hw_conf
SAP_HW

/opt/homebrew/bin/brew list helm
alias helm='/opt/homebrew/Cellar/helm/3.14.2/bin/helm'



cd flask-app-chart

helm upgrade flask-app-sap ./ --values values.yaml

