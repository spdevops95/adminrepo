# Use an official base image with a specific version of the operating system
FROM ubuntu:20.04

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies (example: for a Node.js application)
RUN apt-get update && \
    apt-get install -y nodejs npm

# Expose a port that the application will run on
EXPOSE 3000

# Define the default command to run when the container starts
CMD ["node", "app.js"]

