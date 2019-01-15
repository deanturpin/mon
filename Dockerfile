FROM alpine
RUN apk add make
RUN apk add aircrack-ng
RUN apk add pciutils
RUN airodump-ng-oui-update
COPY . /src
WORKDIR /src
CMD make
