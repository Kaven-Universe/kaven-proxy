# FROM node:lts-slim
FROM node:lts-alpine

WORKDIR /app
RUN npm install kaven-utils

LABEL name="kaven-proxy" \
    author="Kaven" \
    email="kaven@wuwenkai.com" \
    version="latest" \
    description=""

EXPOSE 8558 8765
CMD [ "ku", "proxy" ]