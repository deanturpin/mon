# Docker
Fetches the latest vendor list and runs airodump on the second WiFi network
interface (wlan1). Make sure to run in prvileged. Ctrl-C to exit.
```
docker run --net host --rm --privileged deanturpin/mon
```

# Command line (cloned repo)
Run ```make``` to put wlan1 into promiscuous mode and start collecting.

Run ```make crack``` to analyse the collection. Also fetches a word list.

Assumes you're using a USB WiFi dongle as a second wireless network interface.
To use another interface pass an environment variable to make.
```bash
INTERFACE=wlan0 make
```

To fetch a word list.
```bash
make all.txt
```
