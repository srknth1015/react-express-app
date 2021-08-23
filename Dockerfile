FROM node:14-alpine AS builder
WORKDIR /app
COPY . .
RUN yarn run build

FROM node:14-alpine
RUN yarn global add serve
WORKDIR /app
COPY --from=builder /app/build .
CMD ["serve", "-p", "80", "-s", "."]
