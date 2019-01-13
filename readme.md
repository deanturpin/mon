Run ```make``` to put wlan1 into promiscuous mode and start collecting. Also fetches a word list.

Run ```make crack``` to analyse the collection.

To use another interface pass an environment variable to make:
```bash
INTERFACE=wlan0 make
```
