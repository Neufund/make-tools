#
# Master Make file
#


#
# Const
#
SHELL := /bin/bash
DOCKER_REPOSITORY := ghcr.io
COMMIT_SHA := $(shell git rev-parse HEAD | cut -c 1-8)
TIME_STAMP:= $(shell date +%s)

#
# Default vars
#


#
# Misc
#
help: ## Print out all make targets with comments
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

vars: ## Print all gathered env vars
	@echo "Commit: $(COMMIT_SHA)"
	@echo "Timestamp: $(TIME_STAMP)"


#
# Docker commands
#


#
# Git commands
#