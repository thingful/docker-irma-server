build:
		docker build --no-cache -t irma-server .
.PHONY: build
shell:
		docker run --rm -it irma-server:latest bash
.PHONY: shell
run:
		docker run --rm -e IRMA_API_CONF=/etc/irma_api_server -p 8088:8088 -p 8444:8444 -it irma-server:latest '/irma/irma_api_server/build/output/irma_api_server/start.sh'
.PHONY: run
