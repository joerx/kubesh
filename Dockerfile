FROM debian:stretch

RUN apt-get update \
 && apt-get -y dist-upgrade \
 && apt-get -y install bash curl dnsutils postgresql-client python-pip jq
RUN pip install awscli

CMD ["/bin/bash"]
