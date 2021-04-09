# pull official base image
FROM node:alpine

# set working directory
WORKDIR /usr/app

# install app dependencies
COPY ./package.json ./
RUN  npm install
# RUN npm install react-scripts@3.4.1 -g --silent

# add app
COPY ./ ./

# start app
CMD ["npm", "run", "start"]