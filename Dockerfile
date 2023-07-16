FROM node:16
# Set the working directory in the container
WORKDIR /usr/src/app
# Install http-server globally
RUN npm install -g http-server
# Copy the static files to the container
COPY . .
# Make port 8080 available to the world outside this container
EXPOSE 8080
# Start http-server
CMD ["http-server", "-p", "8080"]
