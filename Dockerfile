# Use Alpine base image for minimal footprint
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app
COPY . .

# Expose port (match your server.js)
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
