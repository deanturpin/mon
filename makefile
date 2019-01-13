all: capture

INTERFACE=wlan1

crack: all.txt
	aircrack-ng *.cap -w $<

monitor:
	airmon-ng start $(INTERFACE)

capture: monitor
	airodump-ng $(INTERFACE)mon -w demo --manufacturer

stop:
	airmon-ng stop $(INTERFACE)mon
	systemctl restart network-manager.service

all.txt:
	curl https://mirrors.edge.kernel.org/openwall/wordlists/all.gz | gunzip > $@

