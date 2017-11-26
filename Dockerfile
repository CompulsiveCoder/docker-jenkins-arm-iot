FROM reverie/armhf-jenkins

USER root

RUN apt-get update && apt-get install -y python build-essential libltdl7 mono-complete && rm -rf /var/lib/apt/lists/*

RUN python -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)"

USER ${user}

ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
