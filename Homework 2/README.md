# Course-Docker-Containers

## Homerwork 2

Description of all instructions from the Dockerfile

### 1. FROM node:alpine 
Choose the node:alpine image that has NodeJS installed.

### 2. WORKDIR /app
Set the working directory to /app.

### 3. COPY package*.json ./
Copy the package.json package-lock.json files into the working directory from the container.

### 4. RUN npm install
Install the project dependencies 

### 5. CMD [ "node", "index.js" ]
Command to execute the application.
