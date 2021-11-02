DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

ROOT ?= $(DIR)
DOCKERFILE ?= ${ROOT}/Dockerfile
PORT ?= 8000

include $(ROOT)/Makefile.inc