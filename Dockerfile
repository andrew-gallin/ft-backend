FROM node:8.9-alpine

# Create app directory
WORKDIR /app

# Install nodemon for hot reload
RUN npm install

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8000
CMD [ "node", "app.js" ]