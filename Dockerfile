FROM node:6.4

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app/
RUN npm install

COPY . /app
RUN npm run compile
RUN npm link

ENTRYPOINT ["/app/docker-entrypoint.sh"]
CMD [ "-h" ]
