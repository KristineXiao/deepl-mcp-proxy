FROM node:20

ENV PORT=8080
EXPOSE 8080

RUN npm install -g deepl-mcp-server@latest

COPY config.json /config.json

CMD ["deepl-mcp-server"]
