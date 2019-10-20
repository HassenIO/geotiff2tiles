FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y curl unzip python-gdal

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
RUN rm -r awscli-bundle.zip ./awscli-bundle

WORKDIR /data

CMD ["/bin/bash"]
