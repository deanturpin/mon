FROM alpine
RUN apk add make
RUN apk add aircrack-ng
RUN apk add pciutils
COPY . /src
WORKDIR /src
CMD make
