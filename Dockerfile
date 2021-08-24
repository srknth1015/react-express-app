FROM node:8.16 as prod
WORKDIR /app
COPY package.json yarn.lock ./
COPY . ./
EXPOSE 30
WORKDIR /root
RUN yarn
RUN yarn run build
WORKDIR /root/react-express-app/frontend
RUN yarn
WORKDIR /root\react-express-app\build\frontend
RUN yarn run build
RUN yarn run start
