IMAGE_VERSION		:= v1.10.0
IMAGE_URL		:= https://github.com/hypriot/image-builder-rpi/releases/download/$(IMAGE_VERSION)/hypriotos-rpi-$(IMAGE_VERSION).img.zip
HYPRIOT_FLASH		:= ./vendor/hypriot-flash/flash
HYPRIOT_FLASH_OPTS	:= -u ./src/userdata.yml -f ./deploy.tgz -l true  $(IMAGE_URL)

.PHONY: all clean
.DEFAULT: all

all: deps install

deps: $(HYPRIOT_FLASH)

$(HYPRIOT_FLASH):
	@git submodule update --recursive --remote --depth 1

deploy.tgz:
	@cd src && tar cvf ../$@ deploy motd.txt

	
install: deploy.tgz ./src/userdata.yml
	@$(HYPRIOT_FLASH) $(HYPRIOT_FLASH_OPTS)

clean:
	@-rm -rf deploy.tgz
