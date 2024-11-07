# Dockerfile
# Use an official Node.js runtime as a parent image
FROM node:14-slim

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application files
COPY . .

# Expose port 3000 for the app
EXPOSE 3002

# Run the Node.js server
CMD ["node", "server.js"]
