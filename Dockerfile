FROM node:lts-alpine as build

WORKDIR /app
COPY . .

RUN npm install kaven-utils && npm i -g @vercel/ncc
RUN ncc build proxy.js -o dist


FROM node:lts-alpine

WORKDIR /app
# COPY --from=build /app/dist .
COPY --from=build /app/dist/index.js ./proxy.js

LABEL name="kaven-proxy" \
    author="Kaven" \
    email="kaven@wuwenkai.com" \
    version="latest" \
    description=""

EXPOSE 8558 8765
CMD [ "node", "proxy.js", "config" ]
