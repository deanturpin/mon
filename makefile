all: capture

crack: all.txt
	aircrack-ng all.cap -w $<

merge:
	rm -f all.cap
	mergecap -F pcap *.cap -w all.cap	

monitor:
	airmon-ng check kill
	airmon-ng start wlan0

capture: monitor
	airodump-ng wlan0mon -w lappo --manufacturer

stop:
	airmon-ng stop wlan0mon
	systemctl restart network-manager.service

all.txt:
	curl https://mirrors.edge.kernel.org/openwall/wordlists/all.gz | gunzip > $@

