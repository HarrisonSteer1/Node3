# Use node:24.16-alpine
FROM node:24.16-alpine
# Set the working directory to /app
WORKDIR /app
# Copy the dependancies 
COPY package*.json ./
# Run the command to install dependancies
RUN npm install 
# Copy all the files
COPY . .
# Expose the correct port
EXPOSE 5000
# Specify the command to run on start-up
CMD ["npm", "start"]
