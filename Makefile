build:
		docker build --no-cache -t irma-server .
.PHONY: build
shell:
		docker run --rm -it irma-server:latest bash
.PHONY: shell

