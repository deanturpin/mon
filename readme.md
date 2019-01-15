# Docker
Make sure to run in prvileged.

```
docker run --net host --rm --privileged -it deanturpin/mon
```

# Command line

Run ```make``` to put wlan1 into promiscuous mode and start collecting.

Run ```make crack``` to analyse the collection. Also fetches a word list.

Assumes you're using a USB WiFi dongle as a second network interface. To use another interface pass an environment variable to make:
```bash
INTERFACE=wlan0 make
```

## Word lists
To fetch a word list.
```bash
make all.txt
```
