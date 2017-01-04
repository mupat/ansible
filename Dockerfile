FROM gesellix/ansible:2.2.0.0

MAINTAINER Mupat <dev@mupat.net>

RUN apk update && \
    apk add --no-cache py2-pip && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

RUN pip install --upgrade pip && \
    pip install boto && \
    pip install boto3

RUN rm -rf /etc/ansible/hosts

COPY ./playbooks/ /etc/ansible/playbooks/

CMD ["ansible", "--version"]
