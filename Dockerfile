# Define a base image for the application
FROM node:alpine 

# Create app directory
WORKDIR /app

# Copying dependencies to the container
COPY package.json package-lock.json /app/

# Install dependencies
RUN npm install

# Copying source code to the container
COPY . /app

# Expose port 3000
EXPOSE 3000

# Run the application
CMD npm start