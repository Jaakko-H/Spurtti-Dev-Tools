# Install required packages
yum install -y yum-utils device-mapper-persistent-data lvm2
# Setup Docker stable repository
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# Install docker
yum install docker-ce -y
# Start docker daemon
systemctl start docker
# Download docker-compose for this Linux kernel name (uname -s) and machine hardware name (uname -m)
curl -L \
    "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# Apply executable permissions to the docker-compose binary file
chmod +x /usr/local/bin/docker-compose
