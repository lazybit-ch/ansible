FROM python:3.9.1-alpine

ARG ANSIBLE_VERSION
ENV ANSIBLE_VERSION=${ANSIBLE_VERSION:-2.9.6}

RUN apk add --no-cache \
        gcc=9.2.0-r3 \
        libffi-dev=3.2.1-r6 \
        musl-dev=1.1.24-r1 \
        openssh-client=8.1_p1-r0 \
        openssl-dev=1.1.1d-r3 \
        python3-dev=3.8.2-r0

RUN python3 -m pip install \
        ansible==${ANSIBLE_VERSION} \
        apache-libcloud==2.8.1 \
        boto==2.49.0 \
        boto3==1.12.24 \
        google-auth==1.11.3 \
        requests==2.23.0

ENTRYPOINT ["ansible"]
