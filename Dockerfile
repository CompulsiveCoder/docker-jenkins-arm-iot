FROM reverie/armhf-jenkins

USER root

RUN apt-get update && apt-get install -y python mono-complete

RUN python -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)"

RUN apt-get update && apt-get install -y libltdl7 && rm -rf /var/lib/apt/lists/*

USER ${user}

ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
