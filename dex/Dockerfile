# Use an official Node.js runtime as a parent image
FROM node:18 as build

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Use a lightweight web server to serve the built files
FROM nginx:alpine

# Copy the build output to the web server's directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose the port the app runs on
EXPOSE 80

# Run the web server
CMD ["nginx", "-g", "daemon off;"]
