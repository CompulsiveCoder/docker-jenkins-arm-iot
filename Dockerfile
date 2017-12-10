FROM reverie/armhf-jenkins

USER root

RUN apt-get update && apt-get install -y nano python python-pip build-essential && rm -rf /var/lib/apt/lists/*

RUN python -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)"

USER ${user}

ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
