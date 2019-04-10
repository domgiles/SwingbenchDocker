# Dockerfile for swingbench
# See www.dominicgiles.com/swingbench.html for further details
# Updated to use openjdk:8-slim and reduce overall size

FROM openjdk:8-slim
# Dockerfile for swingbench
# See www.dominicgiles.com/swingbench.html for further details

RUN apt-get update \
&& apt-get install -y curl \
&& mkdir app \
&& curl "http://www.dominicgiles.com/swingbench/swingbenchlatest.zip" -o app/swingbench.zip

WORKDIR /app
RUN unzip swingbench.zip

ENV PATH "$PATH:/app/swingbench/bin"

WORKDIR /app/swingbench/bin
