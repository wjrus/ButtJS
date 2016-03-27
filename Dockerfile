FROM node:argon

RUN mkdir -p /usr/src/buttbot
WORKDIR /usr/src/buttbot

COPY package.json /usr/src/buttbot

RUN npm install

COPY . /usr/src/buttbot

EXPOSE 5000
CMD [ "npm", "start" ]

