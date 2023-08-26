FROM openjdk:8-jre

RUN apt-get update \
    && apt-get -y install wget \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /photon
ADD https://github.com/komoot/photon/releases/download/0.4.3/photon-0.4.3.jar /photon/photon.jar
COPY entrypoint.sh ./entrypoint.sh

VOLUME /photon/photon_data
EXPOSE 2322

ENTRYPOINT /photon/entrypoint.sh
