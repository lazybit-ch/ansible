FROM python:3.7-alpine

ARG ANSIBLE_VERSION
ENV ANSIBLE_VERSION=${ANSIBLE_VERSION:-2.9.6}

RUN apk add --no-cache \
        gcc=8.3.0-r0 \
        libffi-dev=3.2.1-r6 \
        musl-dev=1.1.20-r5 \
        openssh-client=7.9_p1-r6 \
        openssl-dev=1.1.1d-r2 \
        python3-dev=3.6.9-r2

RUN python3 -m pip install \
        ansible==${ANSIBLE_VERSION} \
        apache-libcloud==2.8.1 \
        boto==2.49.0 \
        boto3==1.12.24 \
        google-auth==1.11.3 \
        requests==2.23.0

ENTRYPOINT ["ansible"]
