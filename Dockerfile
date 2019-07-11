FROM debian:stretch

RUN apt-get update && apt-get -y dist-upgrade

RUN apt-get -y install bash curl dnsutils postgresql-client python-pip jq sudo vim
RUN pip install awscli

RUN useradd user -s /bin/bash -G sudo --create-home -u 1000 \
 && echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/user

USER 1000

ENTRYPOINT ["/bin/bash", "-c", "--"]
CMD ["while true; do sleep 10; done"]
