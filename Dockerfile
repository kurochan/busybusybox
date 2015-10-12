FROM ubuntu:trusty
MAINTAINER kurochan <kuro@kurochan.org>

# install openssl
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y openssl

ADD ./opensslbench .
RUN chmod +x ./opensslbench

CMD ./opensslbench
