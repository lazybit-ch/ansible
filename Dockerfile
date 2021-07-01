FROM python:3.9.6-alpine

ARG ANSIBLE_VERSION
ENV ANSIBLE_VERSION=${ANSIBLE_VERSION:-4.0.0}

ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1

RUN apk add --no-cache \
        gcc=10.2.1_pre1-r3 \
        libffi-dev=3.3-r2 \
        musl-dev=1.2.2-r0 \
        openssh-client=8.4_p1-r3 \
        openssl-dev=1.1.1k-r0 \
        python3-dev=3.8.10-r0

RUN python3 -m pip install --no-cache-dir \
        ansible==${ANSIBLE_VERSION} \
        apache-libcloud==2.8.1 \
        boto==2.49.0 \
        boto3==1.12.24 \
        google-auth==1.11.3 \
        requests==2.23.0

ENTRYPOINT ["ansible"]
