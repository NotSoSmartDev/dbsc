FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install npm dependencies
RUN npm install

# Copy application code
COPY . .

# Expose port (adjust as needed)
EXPOSE 3000

# Start the application
CMD ["npm", "run", "start"]
