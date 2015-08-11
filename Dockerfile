FROM ubuntu:14.04
MAINTAINER Sergei Lissovski <http://github.com/sergeil>

# Letting the container know that there is no TTY
ENV DEBIAN_FRONTEND noninteractive

ENV JSDUCK_VERSION 5.3.4

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
                    build-essential \
                    ruby-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN gem install jsduck -v $JSDUCK_VERSION

RUN mkdir workdir && cd workdir

VOLUME ["/workdir"]
WORKDIR /workdir

CMD ["bash"]
