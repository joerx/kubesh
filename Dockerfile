FROM debian:stretch

RUN apt-get update && apt-get -y dist-upgrade

RUN apt-get -y install bash curl dnsutils postgresql-client python-pip jq sudo vim
RUN pip install awscli

RUN useradd user -s /bin/bash -G sudo --create-home \
 && echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/user

USER user

CMD ["/bin/bash"]
