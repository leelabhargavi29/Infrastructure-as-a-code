Step-by-Step Approach
Part 1:
 Write the CloudFormation YAML Template
Step 1:
 Set Up Your CloudFormation Template
Create Project Directory: Create a new directory for your CloudFormation template if you don’t already have one. E.g., mkdir cloudformation-aws-ec2.
Navigate to the Directory: Change into the new directory. E.g., cd cloudformation-aws-ec2.
Create the Template File: Create a new file named ec2-instance.yaml within this directory.
Step 2:
 Define the CloudFormation YAML Template
Specify the Description:
 Begin by writing a description for the CloudFormation stack.
Define Parameters:
 Optionally, add parameters to make the template more flexible (e.g., InstanceType, KeyName, AMI ID).
Define Resources:
 Add the resource section to define the EC2 instance, specifying properties such as InstanceType, ImageId (AMI), KeyName, and SecurityGroup.
Add Output Section:
 Optionally, include an outputs section to return values such as the Instance ID and Public IP.
Example CloudFormation YAML Template:
Description:
 A basic AWS CloudFormation template for creating an EC2 instance.
yaml
Copy Code


AWSTemplateFormatVersion: '2010-09-09'
Description: Basic EC2 instance creation using CloudFormation

Parameters:
  InstanceType:
    Description: EC2 instance type
    Type: String
    Default: t2.micro
    AllowedValues:
      - t2.micro
      - t2.small
      - t2.medium

  KeyName:
    Description: Name of an existing EC2 KeyPair to enable SSH access
    Type: AWS::EC2::KeyPair::KeyName

  AmiId:
    Description: The AMI ID for the EC2 instance
    Type: AWS::EC2::Image::Id
    Default: ami-0c55b159cbfafe1f0  # Example for Amazon Linux 2

Resources:
  MyEC2Instance:
    Type: AWS::EC2::Instance
    Properties:
      InstanceType: !Ref InstanceType
      KeyName: !Ref KeyName
      ImageId: !Ref AmiId
      SecurityGroups:
        - default

Outputs:
  InstanceId:
    Description: The instance ID
    Value: !Ref MyEC2Instance
  PublicIP:
    Description: The public IP address of the instance
    Value: !GetAtt MyEC2Instance.PublicIp

Part 2:
 Commit and Push Changes
Step 3:
 Initialize Git Repository
Initialize Git: If you haven’t already, initialize a Git repository in the project directory using git init.
Step 4:
 Create and Switch to a Feature Branch
Create a Feature Branch: Create and switch to a new branch for your CloudFormation changes. E.g., git checkout -b feature-cloudformation-aws.
Step 5:
 Add and Commit Changes
Stage the YAML File: Add the ec2-instance.yaml file to the staging area. E.g., git add ec2-instance.yaml.
Commit the Changes: Commit the changes with an appropriate message. E.g., git commit -m "Add CloudFormation template for EC2 instance".
Step 6:
 Push Changes to Remote Repository
Push the Branch: Push the feature branch to the remote repository. E.g., git push origin feature-cloudformation-aws.

Part 3:
 Create a Pull Request
Step 7:
 Navigate to Remote Repository
Open Remote Repository: Go to your project's repository on the hosting service (e.g., GitHub, GitLab).
Step 8:
 Create a Pull Request
Initiate PR:
 Create a new pull request (PR) from the feature-cloudformation-aws branch to the main branch.
PR Title and Description: Provide a clear and descriptive title for the PR and include details summarizing the changes made (e.g., "Add CloudFormation template for creating EC2 instance").
Conclusion
By following these structured steps, you will be able to effectively write a CloudFormation YAML template to create an EC2 instance, commit your changes with an appropriate message, push the changes to the remote repository, and create a pull request to merge the changes into the main branch. This ensures a well-documented and systematic workflow for infrastructure as code management.



