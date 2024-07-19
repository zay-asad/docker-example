# Use the latest image from Docker Hub, which pulls in the latest version of Node.js
FROM node:latest

# Set the working directory inside the container to the root
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies specified in package.json
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which the app will run
EXPOSE 3000

# Specify the command to run the application
CMD ["node", "app.js"]
