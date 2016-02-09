FROM alpine
MAINTAINER Leandre Gohy <leandre.gohy@hexeo.be>

RUN apk --update upgrade
RUN apk add alpine-sdk coreutils
RUN adduser -G abuild -g "Alpine package builder" -s /bin/sh -D builder
RUN echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir /home/builder/package
RUN chown builder:abuild /home/builder/package

WORKDIR /home/builder/package
USER builder
ENV PACKAGER_PRIVKEY /home/builder/abuild.rsa

ENTRYPOINT [ "abuild" ]
