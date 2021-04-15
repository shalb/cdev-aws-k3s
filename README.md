# cdev-aws-k3s

cdev uses [project templates](https://cluster.dev/template-development/) to generate users' projects in a desired cloud. AWS-k3s is a cdev template to create and provision k3s clusters in [AWS cloud](https://cluster.dev/aws-cloud-provider/). The template deploys a k3s cluster using existing or created VPC and domain name.

In this repository you will find all information and samples necessary to start a k3s cluster in AWS.  

## Prerequisites

1. Terraform version 13+
2. AWS account.
3. AWS CLI installed.
4. kubectl installed.
5. [cdev installed](https://cluster.dev/installation/).

## Quick Start

1. [Configure access to AWS](https://cluster.dev/aws-cloud-provider/) and export required variables. 
2. Clone project to your localhost:
    ```
    git clone https://github.com/shalb/cluster.dev.git
    cd cluster.dev/examples/aws_k3s/
    cdev plan
    ```
  
3. Find all necessary config files in the [example directory](https://github.com/shalb/cluster.dev/tree/master/examples/aws_k3s). Edit variables in edit fields, if necessary.
4. Run `cdev apply`.
5. You can also use [code generator](https://cluster.dev/quick-start/) to create the same example. 
