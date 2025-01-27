# Use a minimal Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install --omit=dev

# Copy the static files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the server
CMD ["node", "server.js"]