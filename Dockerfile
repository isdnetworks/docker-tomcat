FROM tomcat:8.5-jdk8
LABEL maintainer="is:-D Networks Docker Maintainers <jhcheong@isdnetworks.pe.kr>"

RUN apt-get update \
 && apt-get install -y locales \
 && rm -rf /var/lib/apt/lists/* \
 && localedef -f UTF-8 -i ko_KR ko_KR.UTF-8 \
 && ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

ENV LANG ko_KR.UTF-8
ENV LANGUAGE ko_KR.UTF-8
ENV LC_ALL ko_KR.UTF-8
ENV TZ Asia/Seoul

