DIR := $(patsubst %/,%,$(dir $(abspath $(lastword ${MAKEFILE_LIST}))))

# The directory where mkdocs.yml lives
ROOT         ?= ${DIR}
# The path to the Dockerfile
DOCKERFILE   ?= ${ROOT}/Dockerfile
# The port on which to serve the documentation on localhost
PORT         ?= 8000
# The path to the tools/ directory, relative to ${ROOT}
TOOLS        ?= tools/
# The path to the requirements.txt file, relative to ${ROOT}
REQUIREMENTS ?= requirements.txt
# The path where Makefile.inc lives
include ${ROOT}/Makefile.inc
