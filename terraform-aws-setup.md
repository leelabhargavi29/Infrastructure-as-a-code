Step 1: 
Set Up Your Terraform Environment
Install Terraform:
 Ensure you have Terraform installed on your machine. If not, download and install it from the official Terraform website.
AWS Access Configuration: Set up your AWS CLI and configure your credentials to allow Terraform to interact with AWS. Use aws configure to add your AWS credentials.
Step 2:
 Create the Project Directory
Create a Directory: Create a new directory for your Terraform configuration files. E.g., mkdir terraform-aws-ec2.
Navigate to the Directory: Change into the new directory. E.g., cd terraform-aws-ec2.
Step 3:
 Write the Terraform Configuration (main.tf)
Create the main.tf File: Inside your project directory, create a file named main.tf.
Define Provider:
 Configure the AWS provider to specify the AWS region you want to deploy your resources in.
Define Resource:
 Add the EC2 instance resource block to define the instance type, AMI ID, and other necessary configurations.
Variables and Outputs (Optional): Optionally, define variables and outputs for better configuration management and future scalability.
Step 4:
 Initialize Terraform
Initialize Terraform: Run terraform init in the project directory to initialize Terraform and download the necessary provider plugins.
Step 5:
 Plan and Apply Changes
Plan the Changes:
 Run terraform plan to see the execution plan and ensure that the configuration is correct.
Apply the Changes:
 Run terraform apply and confirm to create the EC2 instance.
Step 6:
 Verify the EC2 Instance Creation
Verify in AWS Console: Log in to the AWS Management Console and verify that the EC2 instance has been created successfully.
Step 7:
 Commit the Changes
Initialize Git Repository:
 If the project directory isn't already a Git repository, initialize it using git init.
Create a Feature Branch:
 Create a new branch for the Terraform configuration changes. E.g., git checkout -b feature-terraform-aws.
Stage the Changes:
 Add the main.tf file to the staging area using git add main.tf.
Commit the Changes:
 Commit the changes with a clear commit message. E.g., git commit -m "Add Terraform configuration for EC2 instance".
Step 8:
 Push to Remote Repository
Push the Branch: Push your feature branch to the remote repository. E.g., git push origin feature-terraform-aws.
Step 9:
 Create a Pull Request
Navigate to Remote Repository: Go to your remote repository (e.g., on GitHub or GitLab).
Create a Pull Request: Create a pull request (PR) to merge the feature-terraform-aws branch into the main branch. Provide a clear title and description for the PR.


provider "aws" {
  region = "us-east-1"  # Change to your preferred AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-05b10e08d247fb927"  # Use a valid AMI for your region
  instance_type = "t2.micro"  # Change the instance type if needed
  key_name      = "pair"  # Replace with your existing key pair

  tags = {
    Name = "MyTerraformEC2"
  }
}
