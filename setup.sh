#!/bin/bash

GREEN="\\033[0;32m"
NC="\\033[0m"

echo -e "${GREEN}🚧 Setup beginnt...${NC}"

if ! docker network ls | grep -q "web"; then
  echo -e "${GREEN}🔌 Erstelle Docker-Netzwerk 'web'...${NC}"
  docker network create web
else
  echo -e "${GREEN}🔌 Docker-Netzwerk 'web' existiert bereits.${NC}"
fi

docker volume create caddy_data
docker volume create caddy_config

echo -e "${GREEN}🚀 Starte Docker-Compose Stack...${NC}"
docker compose -f docker-compose.yml -f docker-compose.override.yml up -d

echo -e "${GREEN}✅ Setup abgeschlossen!${NC}"
