FROM ghcr.io/tbxark/mcp-proxy:latest

ENV PORT=8080
EXPOSE 8080

COPY config.json /app/config.json

WORKDIR /app

CMD ["-config", "config.json"]

