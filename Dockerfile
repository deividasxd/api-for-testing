# Use an official Node.js image as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the TypeScript code into JavaScript
RUN npm run build

# Expose the port that the API will listen on
EXPOSE 3000

# Start the API when the container is run
CMD ["npm", "run dev"]
