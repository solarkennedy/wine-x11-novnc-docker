FROM monokrome/wine
MAINTAINER Kyle Anderson <kyle@xkyle.com>

RUN apt-get update &&  apt-get -y install xvfb x11vnc xdotool wget supervisor fluxbox
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENV WINEPREFIX /root/prefix32
ENV WINEARCH win32
ENV DISPLAY :0

WORKDIR /root/
ADD novnc /root/novnc/

EXPOSE 8080
CMD ["/usr/bin/supervisord"]
