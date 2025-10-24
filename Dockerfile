# Use official Node image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy files
COPY package*.json ./
RUN npm install --only=production
COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
