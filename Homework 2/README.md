# Course-Docker-Containers

## Homework 2

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


## Installation guide
### Pull the image

`docker push rys999/mynodejsapp:joel.chambilla`

### Run a container from the image previously pulled

`docker run -d -p 3000:3000 --name mysimplestnodejsapp rys999/mynodejsapp:joel.chambilla`

### Options
- -d: detached mode
- -p: Publish a container's port to the host. (e.g. 3000)
- --name: Set a name to the container

### Test the app
Type in your browser the following url:

`http://localhost:3000`
