# A baseline image for AWS tools for IAc.

# Using Ubuntu as it has less vulnerabilities and debian but this should work with Debian:buster as well
#FROM ubuntu:latest
FROM python:3.12.3-bullseye


# Install some common tools needed for the build
RUN apt-get update -qq && apt-get install --no-install-recommends --no-install-suggests -qq -y \
    make \
    wget \
    git \
    ssh \
    unzip \
    ca-certificates \
    shellcheck


