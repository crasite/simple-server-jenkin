FROM node:current-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production
EXPOSE 8080

COPY . .

CMD [ "./node_modules/.bin/http-server","-p 8080" ]