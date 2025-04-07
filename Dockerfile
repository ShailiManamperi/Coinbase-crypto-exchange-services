# use an offical Node runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# copy package.json and package-lock.json to the working diretory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working diretory
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the application
CMD ["node", "server.js"]
