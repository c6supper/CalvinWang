PROJECT_PATH=$(shell pwd)

puml_src = $(shell find ./src -name *.puml)
docs =  $(shell find ./src -name index.adoc)

presentation_docs =  $(shell find ./src/presentation_doc -name *.adoc -not -regex '^.*config.adoc')

include utility/rule.mk