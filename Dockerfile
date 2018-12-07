FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl telnet vim \
    iputils-ping && \
	apt-get clean all && \
    apt-get -y autoremove && \
    rm -rf \
      /root/.cache/* \
      /var/lib/apt/lists/* \
      /tmp/*

ENTRYPOINT [ "/bin/bash" ]
