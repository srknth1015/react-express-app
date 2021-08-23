FROM node:8.16 as prod
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn
COPY . ./
EXPOSE 30
RUN yarn build
