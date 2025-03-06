Part 1:
 Write the Ansible Playbook YAML File
Step 1:
 Set Up Your Ansible Environment
Install Ansible:
 Ensure you have Ansible installed on your machine. If not, install it using package managers like pip or your system’s package manager.
Set Up Ansible Configuration: Ensure you have the necessary configuration to manage your target GCP (Google Cloud Platform) instances. This includes setting up GCP credentials and configuring SSH access.
Step 2:
 Create the Project Directory
Create a Directory:
 Create a new directory for your Ansible playbook files (e.g., mkdir ansible-gcp).
Navigate to the Directory: Change into the new directory (e.g., cd ansible-gcp).
Step 3:
 Write the Ansible Playbook (main.yml)
Create the Playbook File:
 Inside your project directory, create a file named main.yml.
Define the Play:
Hosts:
 Define the target hosts. This can be an inventory group or specific IP addresses of GCP instances.
Tasks:
 Define a list of tasks to be executed on the target instances. This may include package installations, file edits, and service management.
Example Ansible Playbook YAML:
Description:
 A basic Ansible playbook for updating and installing packages on a GCP instance.
yaml


- name: Setup and configure GCP instance
  hosts: gcp_instances
  become: true
  tasks:
    - name: Update and upgrade apt packages
      apt:
        update_cache: yes
        upgrade: dist

    - name: Install Nginx
      apt:
        name: nginx
        state: present

    - name: Start Nginx service
      service:
        name: nginx
        state: started
        enabled: yes
Part 2:
 Commit and Push Changes
Step 4:
 Initialize Git Repository
Initialize Git: If you haven’t already, initialize a Git repository in the project directory using git init.
Step 5:
 Create and Switch to a Feature Branch
Create a Feature Branch: Create and switch to a new branch for your Ansible playbook changes (e.g., git checkout -b feature-ansible-gcp).
Step 6:
 Add and Commit Changes
Stage the Playbook File: Add the main.yml file to the staging area (e.g., git add main.yml).
Commit the Changes: Commit the changes with a clear message (e.g., git commit -m "Add Ansible playbook for configuring GCP instance").
Step 7:
 Push Changes to Remote Repository
Push the Branch:
 Push the feature branch to the remote repository (e.g., git push origin feature-ansible-gcp).
Part 3:
 Create a Pull Request
Step 8:
 Navigate to Remote Repository
Open Remote Repository: Go to your project's repository on the hosting service (e.g., GitHub, GitLab).
Step 9:
 Create a Pull Request
Initiate PR: Create a new pull request (PR) from the feature-ansible-gcp branch to the main branch.
PR Title and Description: Provide a clear and descriptive title for the PR and include details summarizing the changes made (e.g., "Add Ansible playbook for configuring GCP instance").

