# A baseline image for AWS tools for IAc.

# Using Ubuntu as it has less vulnerabilities and debian but this should work with Debian:buster as well
#FROM ubuntu:latest
FROM python:3.12.3-bullseye


# Install some common tools needed for the build
RUN sudo yum update -y
RUN sudo yum install make -y\
    wget -y\
    git -y\
    ssh -y\
    unzip -y\
    ca-certificates -y\
    shellcheck -y
RUN sudo pip3 install flask
    


