all: capture

crack: all.txt
	aircrack-ng demo.cap -w $<

merge:
	rm -f all.cap
	mergecap -F pcap *.cap -w all.cap	

monitor:
	# airmon-ng check kill
	airmon-ng start wlan1

capture: monitor
	airodump-ng wlan1mon -w demo --manufacturer

stop:
	airmon-ng stop wlan1mon
	systemctl restart network-manager.service

all.txt:
	curl https://mirrors.edge.kernel.org/openwall/wordlists/all.gz | gunzip > $@

