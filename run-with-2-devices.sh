# Must run as sudo

# 2 USB devices with docker support
sudo docker run -dit --restart always -p 8080:8080 -p 50000:50000 -v /home/j/jenkins:/var/jenkins_home --device /dev/ttyUSB0 --device /dev/ttyUSB1 -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/bin/docker jenkins-arm-iot

