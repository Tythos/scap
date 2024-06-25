# build stage
FROM node:latest
WORKDIR /home
COPY . .
RUN yarn install
RUN yarn run build

# runtime stage
FROM nginx:latest
COPY --from=0 /home/dist/ /usr/share/nginx/html/
