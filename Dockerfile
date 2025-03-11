# Use the official Node.js image from the Docker Hub
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json first to leverage Docker's caching
# This helps install dependencies without re-installing every time
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your application files
COPY . .

# Expose port 3000 (the port your app will run on)
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
