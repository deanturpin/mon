FROM kalilinux/kali-linux-docker
RUN apt update
RUN apt install -y wifi-honey
RUN apt install -y make
RUN apt install -y pciutils
COPY . /src
WORKDIR /src
# CMD make
