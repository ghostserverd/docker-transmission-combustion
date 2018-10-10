FROM ghostserverd/transmission

USER root

WORKDIR /usr/share/transmission/web/

RUN rm -rf * && \
    wget https://github.com/Secretmapper/combustion/archive/release.zip && \
    unzip release.zip && \
    mv combustion-release/* ./
