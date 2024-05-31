# A baseline image for AWS tools for IAc.

# Using Ubuntu as it has less vulnerabilities and debian but this should work with Debian:buster as well
#FROM ubuntu:latest
FROM wordpress:6.5.3-php8.1-apache


# Install some common tools needed for the build
RUN apt-get update && apt-get upgrade -y
RUN apt-get install make \
    wget \
    git \
    ssh \
    unzip \
    ca-certificates \
    shellcheck \
    dpkg \
    lsb-release -y

RUN wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.7.5-1_amd64.deb && WAZUH_MANAGER='54.157.164.112' WAZUH_AGENT_GROUP='default' WAZUH_AGENT_NAME='wazuh-wordpress' dpkg -i ./wazuh-agent_4.7.5-1_amd64.deb
RUN service enable wazuh-agent
RUN service start wazuh-agent 


