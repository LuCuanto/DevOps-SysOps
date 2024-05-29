# A baseline image for AWS tools for IAc.

# Using Ubuntu as it has less vulnerabilities and debian but this should work with Debian:buster as well
#FROM ubuntu:latest
FROM python:3.12.3-bullseye


# Install some common tools needed for the build
RUN sudo yum update -y && sudo yum upgrade -y \
    sudo yum install make -y\
    sudo yum install wget -y\
    sudo yum install git -y\
    sudo yum install ssh -y\
    sudo yum install unzip -y\
    sudo yum install ca-certificates -y\
    sudo yum install shellcheck -y\
    sudo pip3 install flask
    


