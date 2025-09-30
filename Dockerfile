FROM ghcr.io/tbxark/mcp-proxy:latest

RUN apt-get update && apt-get install -y --no-install-recommends nodejs npm

RUN npm install -g deepl-mcp-server@latest

ENV PORT=8080
EXPOSE 8080

COPY config.json /config.json

CMD ["-config", "/config.json"]

