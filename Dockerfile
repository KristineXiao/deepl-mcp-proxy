# force rebuild

FROM ghcr.io/tbxark/mcp-proxy:latest

ENV PORT=8080
EXPOSE 8080

RUN apt-get update && apt-get install -y --no-install-recommends nodejs npm

RUN npm install -g deepl-mcp-server@latest

COPY config.json /config.json

CMD ["-config", "/config.json"]
