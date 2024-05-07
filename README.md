# EKS and Helm Chart

## EKS 
Create a VPC by vpc.tf, while EKS cluster by eks-cluster.tf
### Initialise
```bash
terraform init
```
### Preview terraform action
```bash
terraform plan
```
### Destroy everything from tf files
```bash
terraform destroy
```

## Helm chart 
Helm chart to deploy node-web-app : 
### Install and Apply helm chart
```bash
helm install node-app-v1 node-app/ --values node-app/values.yaml
```
### Upgrade helm chart
```bash
helm upgrade node-app-v2 node-app/ --values node-app/values.yaml
```
 
