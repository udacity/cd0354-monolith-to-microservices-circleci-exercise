# Use NodeJS base image
FROM node:18

# Create a directory for the Express app
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Bind the port that the image will run on
EXPOSE 5000

# Define the Docker image's behavior at runtime
CMD ["node", "server.js"]