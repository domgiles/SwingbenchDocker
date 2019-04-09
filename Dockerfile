# Dockerfile for swingbench
# See www.dominicgiles.com/swingbench.html for further details
# Updated to use oraclelinux:7-slim and reduce RUN statements

FROM oraclelinux:7-slim

RUN yum makecache fast \
&& yum install -y java-1.8.0-openjdk-headless.x86_64, unzip \
&& curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" \
&& python get-pip.py \
&& pip install prettytable \
&& mkdir app \
&& curl "http://www.dominicgiles.com/swingbench/swingbenchlatest.zip" -o app/swingbench.zip

WORKDIR /app
RUN unzip swingbench.zip

ENV PATH "$PATH:/app/swingbench/bin"

WORKDIR /app/swingbench/bin
