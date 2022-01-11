# Example infrastructure with k3s and demo app

1. [Configure access to AWS](https://docs.cluster.dev/examples-aws-eks/#authentication) and export required variables.
2. Copy all example files to empty dir.  
As an alternative you can use cdev generator to create project from this repo:

    ```bash
    cdev project create https://github.com/shalb/cdev-aws-k3s
    ```

3. Edit variables in the example's files, if necessary.
4. Run `cdev plan`
5. Run `cdev apply`
