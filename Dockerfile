FROM node:carbon

# create work directory
WORKDIR /usr/src/app

# copy package.json
COPY package.json ./
RUN npm install

# copy source code
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
