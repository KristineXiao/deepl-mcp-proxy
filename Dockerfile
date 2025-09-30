# force rebuild

FROM node:20

ENV PORT=8080
EXPOSE 8080

RUN npm install -g @tbxark/mcp-proxy deepl-mcp-server

COPY config.json /config.json

CMD ["mcp-proxy", "-config", "/config.json"]
