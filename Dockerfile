FROM gradle:alpine
USER root
RUN apk --no-cache add \
    openssl \
    openssl-dev \
    ca-certificates \
    bash \
    git

EXPOSE 8088:8088
EXPOSE 8444:8444

WORKDIR /irma
RUN git clone https://github.com/privacybydesign/irma_api_server.git
RUN cd /irma/irma_api_server && git submodule init && git submodule update
RUN mkdir /etc/irma_api_server && cp /irma/irma_api_server/src/main/resources/config.sample-demo.json /etc/irma_api_server/config.json

WORKDIR /irma/irma_api_server
RUN gradle buildProduct 

#RUN ./build/output/irma_api_server/start.sh
#RUN git checkout tags/v1.3.1

