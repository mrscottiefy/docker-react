# pull official base image
FROM node:alpine

# set working directory
WORKDIR '/app'

# install app dependencies
COPY package*.json ./
RUN  npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=0 /app/build /usr/share/nginx/html