FROM node:14.2-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# #
# ## Install app dependencies
COPY package.json /usr/src/app/
COPY .npmrc /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app
RUN npm run build

CMD NODE_ENV=production DEBUG=devops-exc:* node ./bin/www
