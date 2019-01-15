FROM alpine
RUN apk add make
RUN apk add aircrack-ng
RUN apk add pciutils
RUN apk add hwdata-oui
COPY . /src
WORKDIR /src
CMD make
