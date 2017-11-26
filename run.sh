#docker run -ti jenkins-arm-iot

# No USB devices
sudo docker run -it --restart always -u $USER -p 8080:8080 -p 50000:50000 -v /home/j/jenkins:/var/jenkins_home  jenkins-arm-iot

# 2 USB devices
#sudo docker run -dit --restart always -u $USER -p 8080:8080 -p 50000:50000 --device /dev/ttyUSB0 --device /dev/ttyUSB1 -v /home/j/jenkins:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):$(which docker) reverie/armhf-jenkins

