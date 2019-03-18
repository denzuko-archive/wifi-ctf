IMAGE_VERSION	:= v1.10.0
IMAGE_URL	:= https://github.com/hypriot/image-builder-rpi/releases/download/$(IMAGE_VERSION)/hypriotos-rpi-$(IMAGE_VERSION).img.zip

all: vendor/hypriot-flash/flash userdata.yml

	vendor/hypriot-flash/flash -u userdata.yml -f deploy.tgz -l true 

deploy.tgz:
	tar cvf $@ deploy/ motd.txt

vendor/hypriot-flash/flash:
	git submodule update --recursive --remote --depth 1
