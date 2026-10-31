DIR := $(shell pwd)
BUILD_DIR := $(DIR)/build

all:
	mkdir -p $(BUILD_DIR)
	cp -r $(DIR)/src/* $(BUILD_DIR)/
	cd $(BUILD_DIR) && zip -r -9 $(BUILD_DIR)/sudodroid.zip ./*
	
clean:
	rm -rf $(BUILD_DIR)/
