                                                                    ansible.sh
#!/bin/bash

# Update package list
sudo apt-get update

# Install dependencies
sudo apt install python3-venv  # Install the package needed for venv
python3 -m venv venv  # Create a virtual environment named 'venv'
source venv/bin/activate  # Activate the virtual environment

# Upgrade pip
pip install --upgrade pip

# Install Ansible
pip install ansible

########################
# Docker
########################
echo "Installing Docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update


git add Dockerfile ansible.sh minikube.sh venv/

