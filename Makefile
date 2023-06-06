PROJECT_PATH=$(shell pwd)

docs =  $(shell find ./src -name index.adoc)

include utility/rule.mk