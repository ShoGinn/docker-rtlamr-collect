FROM golang:latest

RUN set -x && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends \
    rtl-sdr \
    && go get github.com/bemasher/rtlamr \
    && go get github.com/bemasher/rtlamr-collect \
    && chmod a+x ./bin/rtlamr* \
    && curl -s https://raw.githubusercontent.com/mikenye/deploy-s6-overlay/master/deploy-s6-overlay.sh | sh

ENTRYPOINT ["/init"]