build:
		docker build --no-cache -t irma-server .
.PHONY: build
irma-shell:
		docker run --rm -it irma-server:latest bash
.PHONY: irma-shell

