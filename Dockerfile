FROM node:12

RUN mkdir /app
WORKDIR /app
ADD . /app/

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8000
CMD [ "node", "index.js" ]