FROM node:8.16 as prod
WORKDIR /app
COPY package.json yarn.lock ./
COPY . ./
EXPOSE 30
CMD['yarn']
CMD['yarn run','build']
CMD['yarn run','start']
CMD['cd','\root\react-express-app\frontend']
CMD['yarn']
CMD['cd','\root\react-express-app\build\frontend']
CMD['yarn run','build']
CMD['yarn run','start']
