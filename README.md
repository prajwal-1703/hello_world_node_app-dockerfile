# 🚀 Hello World Node App with Docker

A simple **Node.js + Express** application that displays “Hello World” in the browser. This was my first hands-on project while learning Docker.

---

## 📚 What I Learned

- Setting up a basic Node.js + Express app
- Writing a `Dockerfile` to containerize the app
- Building a Docker image
- Running containers from the image
- Publishing Docker images to **Docker Hub**

---

## 🛠️ How I Built This

### 1. Initialized a Node.js project

```bash
npm init -y
```

### 2. Installed Express

```bash
npm install express
```

### 3. Created a simple server (`index.js`)

```js
const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('Hello World from Docker!');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
```

### 4. Created a `Dockerfile`

```Dockerfile
# Use an official Node.js runtime as a base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the app port
EXPOSE 3000

# Run the app
CMD ["node", "index.js"]
```

---

## 🐳 How I Built and Pushed the Docker Image

### Build the Docker image

```bash
docker build -t dev1703/hello_world_node_app .
```

### Run the container locally

```bash
docker run -p 3000:3000 dev1703/hello_world_node_app
```

Now visit `http://localhost:3000` to see your app running.

### Push the image to Docker Hub

```bash
docker login
docker push dev1703/hello_world_node_app
```

The image is now publicly available on [Docker Hub](https://hub.docker.com/r/dev1703/hello_world_node_app).

---

## 🚀 How You Can Use This Public Docker Image

If you have Docker installed, just run:

```bash
docker run -p 3000:3000 dev1703/hello_world_node_app
```

Then go to `http://localhost:3000` — and you'll see "Hello World from Docker!" 🎉

---

## 📁 Project Structure

```
.
├── Dockerfile
├── index.js
├── package.json
└── package-lock.json
```

---

## 📌 Notes

- This is a great starter template for learning how to dockerize Node.js apps.
- Feel free to clone or extend this project for further practice.

---

## 📦 Image Info

- **Docker Image Name**: `dev1703/hello_world_node_app`
- **Visibility**: Public
- **Base Image**: `node:18`
