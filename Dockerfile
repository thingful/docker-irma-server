FROM gradle:alpine
USER root
RUN apk --no-cache add \
    openssl \
    openssl-dev \
    ca-certificates \
    bash \
    git

WORKDIR /irma
RUN git clone https://github.com/privacybydesign/irma_api_server.git
#RUN git checkout tags/v1.3.1

