# Must run as sudo

# No USB devices without docker support
#sudo docker run -it --restart always -u $USER -p 8080:8080 -p 50000:50000 -v /home/j/jenkins:/var/jenkins_home  jenkins-arm-iot

# No USB devices with docker support
sudo docker run -it --restart always -p 8080:8080 -p 50000:50000 -v /home/j/jenkins:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/bin/docker jenkins-arm-iot

