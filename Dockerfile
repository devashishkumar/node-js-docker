FROM node:14
# Create app directory
WORKDIR /app
# Copy package.json and package-lock.json using a wildcard
COPY package*.json ./
# Install app dependencies
RUN npm install
# Bundle app source
COPY . ./app
EXPOSE 4444
CMD ["npm", "start"]