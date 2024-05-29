# A baseline image for AWS tools for IAc.

# Using Ubuntu as it has less vulnerabilities and debian but this should work with Debian:buster as well
#FROM ubuntu:latest
FROM ubuntu:rolling


ARG VERSION_AWS_CLI=2.1.31


# Install some common tools needed for the build
RUN apt-get update -qq && apt-get install --no-install-recommends --no-install-suggests -qq -y \
    make \
    wget \
    git \
    ssh \
    unzip \
    ca-certificates \
    gcc python3-dev \
    python3-pip \
    shellcheck


# Install the AWS CLI.
RUN  wget --user-agent=Mozilla --content-disposition -E -c https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.1.31.zip && \
    unzip awscli-exe-linux-x86_64-2.1.31.zip && \
    ./aws/install && \
    rm -f awscli-exe-linux-x86_64-2.1.31.zip


# Install AWSume
RUN pip install awsume
