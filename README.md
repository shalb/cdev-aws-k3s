# cdev-aws-k3s

cdev uses [project templates](https://cluster.dev/template-development/) to generate users' projects in a desired cloud. AWS-k3s is a cdev template that creates and provisions Kubernetes clusters in [AWS cloud](https://cluster.dev/aws-cloud-provider/) by means of k3s utility. The template deploys a k3s cluster using existing or created VPC and domain name.

In this repository you will find all information and samples necessary to start a k3s cluster in AWS.  

The resources to be created:

* AWS Key Pair to access running instances of the cluster.
* *(optional, if your use cluster.dev domain)* Route53 zone **<cluster-name>.cluster.dev** 
* *(optional, if vpc_id is not set)* VPC for EKS cluster
* AWS IAM Policy for managing your DNS zone by external-dns
* k3s Kubernetes cluster with addons:
    * cert-manager
    * ingress-nginx
    * external-dns
    * argocd

## Prerequisites

1. Terraform version 13+
2. AWS account.
3. AWS CLI installed.
4. kubectl installed.
5. [cdev installed](https://cluster.dev/installation/).

## Quick Start

1. [Configure access to AWS](https://cluster.dev/aws-cloud-provider/) and export required variables. 
2. Clone example project:
    ```
    git clone https://github.com/shalb/cdev-aws-k3s.git
    cd examples/
    ```
  
3. Edit variables in the example's files, if necessary.
4. Run `cdev plan`.
5. Run `cdev apply`
6. You can also use [code generator](https://cluster.dev/quick-start/) to create the same example. 
