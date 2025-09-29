FROM ghcr.io/tbxark/mcp-proxy:latest

ENV PORT=8080
EXPOSE 8080

CMD ["-config", "config.json"]

