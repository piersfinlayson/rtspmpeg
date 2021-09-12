FROM ubuntu:latest

ENV TZ=Europe/London
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y lighttpd ffmpeg
RUN cd /etc/lighttpd/conf-enabled && ln -s ../conf-available/10-cgi.conf
VOLUME /var/www/cgi-bin
COPY 10-cgi.conf /etc/lighttpd/conf-available/10-cgi.conf
COPY start.sh /

CMD ["/start.sh"]
