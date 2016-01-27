## Installation

### docker

You may need to install the bridge-utils and apparmor first.
```sh
sudo aptitude install bridge-utils apparmor -y
```

```sh
wget -qO- https://get.docker.com/ | sh
```

After installation, add user into the docker group.
```sh
sudo usermod -aG docker user
```

More details, see [official documentation](https://docs.docker.com/installation/ubuntulinux/)

If no available IP range is found, then find one and set manually
```sh
sudo ifconfig docker0 172.17.0.1/16
```

After the installation, config to use the aliyum docker repo mirror, see [here](http://help.aliyun.com/knowledge_detail.htm?knowledgeId=5974865).


### docker-images
#### jenkins
The official image is at [https://registry.hub.docker.com/_/jenkins/](https://registry.hub.docker.com/_/jenkins/)
```sh
docker pull jenkins
sudo chown 1000 /opt/jenkins_home
```

#### kiyohara/docker-rabbitmq-mqtt
```sh
docker pull kiyohara/docker-rabbitmq-mqtt
```

#### nginx
```sh
docker pull nginx
```

### jenkins
CI engine
```sh
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
```

### tmux
Multiple login session management.

```sh
sudo aptitude install tmux
```

### zsh
powerful bash shell.
```sh
sudo aptitude install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s `which zsh`
```
