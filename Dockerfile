FROM ghcr.io/tbxark/mcp-proxy:latest

ENV PORT=8080
EXPOSE 8080

CMD ["--addr", ":8080", "--allow-origin", "*", "--pass-env", "--", "npx", "deepl-mcp-server"]
