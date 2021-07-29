FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

ARG UNAME
ARG UID
ARG GID
ARG XAUTH_TOKEN

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    wget \
    gnupg2 \
    software-properties-common \
    xauth

# Installing WineHQ
RUN dpkg --add-architecture i386
RUN wget -nc "https://dl.winehq.org/wine-builds/winehq.key"
RUN apt-key add winehq.key
RUN add-apt-repository "deb https://dl.winehq.org/wine-builds/ubuntu/ focal main"
RUN apt-get update
RUN apt-get install --install-recommends -y winehq-stable

# Installing Lutris
RUN apt-add-repository ppa:lutris-team/lutris
RUN apt-get update
RUN apt-get install -y \
    lutris
    
# Adding non-root user
RUN groupadd ${GID}
RUN useradd -m -u ${UID} -g ${GID} -s /bin/bash ${UNAME}
RUN echo "root:rootUserPasswd" | chpasswd
RUN echo "${UNAME}:password" | chpasswd
RUN echo "${UNAME} ALL=(ALL:ALL) ALL" | EDITOR="tee -a" visudo

RUN touch "/home/${UNAME}/.Xauthority"
RUN chown "${UNAME}:${GID}" "/home/${UNAME}/.Xauthority"
RUN echo "${XAUTH_TOKEN}" | tee "/home/${UNAME}/xauth_key"

USER ${UNAME}

CMD [ "/usr/games/lutris" ]