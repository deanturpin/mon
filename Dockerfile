FROM kalilinux/kali-linux-docker
RUN apt update
RUN apt install -y wifi-honey
RUN apt install -y make
COPY . /src
WORKDIR /src
CMD make
