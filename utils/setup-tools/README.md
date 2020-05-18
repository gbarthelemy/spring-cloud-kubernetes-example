# 1 Install Docker

Docker is an open-source project that automates the deployment of software applications inside containers by providing an additional layer of abstraction and automation of OS-level virtualization on Linux.

###Windows 
Use the following installer [Docker Dekstop for Windows Installer](https://download.docker.com/win/stable/Docker%20Desktop%20Installer.exe)

###OSX
Either use [Docker Dekstop for MAC Installer](https://download.docker.com/mac/stable/Docker.dmg) or [homebrew](https://docs.brew.sh/Installation) with following commands:
```bash
# Fetch latest version of homebrew and formula.
brew update              
# Tap the Caskroom/Cask repository from Github using HTTPS.
brew tap caskroom/cask                
# Searches all known Casks for a partial or exact match.
brew search docker                    
# Displays information about the given Cask
brew cask info docker
# Install the given cask.
brew cask install docker              
# Remove any older versions from the cellar.
brew cleanup
# Validate installation
docker -v
```

###Linux
Use the following commands :
```bash
# Remove if already install
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
# Utils
sudo yum install -y yum-utils
# Add docker-ce repo
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
# Install
sudo dnf -y  install docker-ce --nobest
# Enable service
sudo systemctl enable --now docker
# Get Status
systemctl status  docker
# Logout....Lougin
exit
# Create user
sudo usermod -aG docker $USER
newgrp docker
# Validation
docker images
docker run hello-world
docker -v
```

# 2 Install Kubernetes command-line tool (Kubectl)
The Kubernetes command-line tool, `kubectl`, allows you to run commands against Kubernetes clusters. You can use kubectl to deploy applications, inspect and manage cluster resources, and view logs. Please refer to [Reference Documentation](https://kubernetes.io/docs/tasks/tools/install-kubectl/) for more detailed instructions.

###Windows
Use the following installer [Kubectl for Windows](https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/windows/amd64/kubectl.exe)

###OSX
Use the following [homebrew](https://docs.brew.sh/Installation) commands:
```bash
brew install kubectl
```

###Linux
Use the following commands
```bash
# Download binary and move to /bin
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
# Make the file executable
chmod +x ./kubectl
# Move the binary in to your PATH.
sudo mv ./kubectl /usr/local/bin/kubectl
#Test to ensure the version you installed is up-to-date:
kubectl version --client
```

# 3. Install Kind

kind (`kind`)cis a tool for running local Kubernetes clusters using Docker container “nodes”. kind was primarily designed for testing Kubernetes itself, but may be used for local development or CI. Please refer to [Reference Documentation](https://kind.sigs.k8s.io/docs/user/quick-start/) for more detailed instructions.

###Windows
Dowmload the [executable](https://kind.sigs.k8s.io/dl/v0.7.0/kind-windows-amd64) and place it on the PATH. You can also use **[Chocolatey](https://chocolatey.org/packages/kind)** very clever package manager for windows.
```bash
choco install kind
```

###OSX
Use the following [homebrew](https://docs.brew.sh/Installation) commands:
```bash
brew install kind
```

###Linux
Use the following commands
```bash
curl -Lo ./kind https://github.com/kubernetes-sigs/kind/releases/download/v0.7.0/kind-$(uname)-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
```
