# Dockerfile for swingbench
# See www.dominicgiles.com/swingbench.html for further details

FROM oraclelinux:7

RUN yum makecache fast
RUN yum install -y java-1.8.0-openjdk-headless.x86_64
RUN yum install -y unzip

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py

RUN pip install prettytable
RUN mkdir app
RUN curl "http://www.dominicgiles.com/swingbench/swingbenchlatest.zip" -o app/swingbench.zip
WORKDIR /app
RUN unzip swingbench.zip

ENV PATH "$PATH:/app/swingbench/bin"

WORKDIR /app/swingbench/bin
