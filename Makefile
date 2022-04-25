DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

# The directory where mkdocs.yml lives
ROOT ?= $(DIR)
# The path to the Dockerfile
DOCKERFILE ?= ${ROOT}/Dockerfile
# The path to the tools/ directory, relative to ${ROOT}
TOOLS ?= tools/
# The path to the mkdocs_requirements.txt file, relative to ${ROOT}
REQUIREMENTS ?= mkdocs_requirements.txt
# The port on which to serve the documentation on localhost
PORT ?= 8000

include $(ROOT)/Makefile.inc
