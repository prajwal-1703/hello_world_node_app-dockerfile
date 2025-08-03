# //install node.js
# //clone the repo / copy the index.js file and the package.json file 
# // run npm install
# //run node indecx.js

FROM node:22-alpine
WORKDIR /app

# copy indeex.js index.js
# copy package.json package.json

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]
