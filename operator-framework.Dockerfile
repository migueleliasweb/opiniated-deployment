FROM alpine:3.10

WORKDIR /opt/opiniated-deployment

ENV OPERATOR_FRAMEWORK_VERSION v0.12.0

RUN wget https://github.com/operator-framework/operator-sdk/releases/download/${OPERATOR_FRAMEWORK_VERSION}/operator-sdk-${OPERATOR_FRAMEWORK_VERSION}-x86_64-linux-gnu -O operator-framework \
    && chmod a+x operator-framework \
    && mv operator-framework /usr/local/bin
