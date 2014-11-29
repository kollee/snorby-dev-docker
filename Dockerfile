# Building the image:
FROM ubuntu:12.04
MAINTAINER Christian Kollee <christian@kollee.de>
RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y build-essential ruby1.9.1-dev libxml2-dev libxslt1-dev libmysqlclient-dev ruby-bundler git
COPY runSnorby /opt/runSnorby
RUN chmod +x /opt/runSnorby
RUN update-alternatives --set ruby /usr/bin/ruby1.9.1

# Running the container:
#
