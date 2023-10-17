# CI/CD Pipeline using Github Actions

![gh-docker-ecr](./assets/gha-docker-ecr.png)

There are currently 3 GitHub Actions (GHA) available, to build the application, establish the infrastructure before deployment, and perform the deployment.

1. build.yml
2. aws-setup-dev-ecr.yml
3. aws-deploy.yml

Currently, the `aws-setup-dev-ecr.yml` and `aws-deploy.yml` of the above actions can be triggered manually but `build.yml` does not have any manual trigger rather it runs on the push of the `main` branch.

## Building the App

CI/CD pipeline to test and build the application is present in the `.github/workflows/build.yml` file in this repository.
This action performs below tasks:

1. Checkout the code from VCS on the action runner
2. Setup NodeJS
3. Install Dependencies
4. Test and Build


## ECR setup on AWS

We are using Terraform to setup an ECR in the AWS cloud using the GitHub workflow file present at `.github/workflows/aws-setup-dev-ecr.yml`
This action performs below tasks:

1. Checkout the code from VCS on the action runner
2. AWS Credential configuration
   1. AWS `Aassume Role` is being used along with GitHub authentication for AWS credentials setup.
   2. Please refer to [this](https://aws.amazon.com/blogs/security/use-iam-roles-to-connect-github-actions-to-actions-in-aws/) to connect GHA and IAM roles in the AWS.
3. Setup Terraform
4. Initialize Terraform
5. Plan Terraform
6. Apply Terraform


## Deployment on AWS

**Note**: *Currently, we are just publishing docker images to ECR and deployment part to AWS using ECS FARGET can be something that can be acheived in future.*

We are basically making the Docker images and pusing to ECR as per the action file `.github/workflows/aws-deploy.yml`.

This action contains below setps:

1. Checkout the code from VCS on the action runner
2. Set `short commit SHA` in environment variable that can be used for Image Tag.
3. Set `package.json version` in environment variable that can be used for Image Tag.
4. AWS Credential configuration
5. Login to ECR
6. Build, tag and push image to Amazon ECR

