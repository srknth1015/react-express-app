FROM node:8.16 as prod
WORKDIR /app
COPY package.json yarn.lock ./
COPY . ./
EXPOSE 30
RUN yarn
RUN yarn run build
RUN yarn run start
