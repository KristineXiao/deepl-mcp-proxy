FROM ghcr.io/tbxark/mcp-proxy:latest

ENV PORT=8080
EXPOSE 8080

RUN apk add --no-cache nodejs npm
RUN npm install -g deepl-mcp-server

COPY config.json /config.json

CMD ["-config", "/config.json"]
