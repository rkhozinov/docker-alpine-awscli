FROM alpine:3.11

LABEL maintainer="Ruslan Khozinov <ruslan.khozinov@gmail.com>"

# Set timezone to UTC by default
RUN ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime

# Install 
RUN apk update && \
    apk add --no-cache --update bash python3 python3-dev && \
    pip3 --no-cache install awscli && \
    rm /var/cache/apk/*

CMD ["/bin/bash"]
