FROM ubuntu:latest

# Install Node.js and npm
RUN apt-get update && \
    apt-get install -y nodejs npm && \
    ln -s /usr/bin/nodejs /usr/bin/node

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Command to start the application
CMD ["npm", "start"]
