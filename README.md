# 🚀 Hello World Node App with Docker

A simple **Node.js + Express** application that displays “Hello World!” in the browser. This was my first hands-on project while learning Docker.

---

## 📚 What I Learned

- Setting up a basic Node.js + Express app
- Writing a `Dockerfile` to containerize the app
- Using `.dockerignore` to optimize builds
- Building a Docker image from source
- Running containers locally
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
const express = require("express");
const app = express();

app.get("/", (req, res) => {
    res.send("Hello World!");
});

app.listen(3000);
```

---

## 📁 Project Structure

```
.
├── Dockerfile
├── .dockerignore
├── index.js
├── package.json
└── package-lock.json
```

---

### 4. Created a `.dockerignore` file

To avoid copying unnecessary files like `node_modules` into the Docker image:

```
node_modules
```

---

### 5. Created a `Dockerfile`

```Dockerfile
# Use an official Node.js runtime as the base image
FROM node:22-apline

# Set the working directory in the container
WORKDIR /app

# Copy everything from the project directory
COPY . .

# Install dependencies
RUN npm install

# Expose the app's port
EXPOSE 3000

# Run the application
CMD ["node", "index.js"]
```

---

## 🐳 Docker Image: Build and Push

### Build the Docker image

```bash
docker build -t dev1703/hello_world_node_app .
```

### Run the container locally

```bash
docker run -p 3000:3000 dev1703/hello_world_node_app
```

Open your browser at `http://localhost:3000` and you’ll see:

> **Hello World!**

### Push to Docker Hub

```bash
docker login
docker push dev1703/hello_world_node_app
```

✅ The image is now public at:  
[https://hub.docker.com/r/dev1703/hello_world_node_app](https://hub.docker.com/r/dev1703/hello_world_node_app)

---

## 🚀 Run the Public Docker Image (No Setup Needed)

If Docker is installed, just pull and run:

```bash
docker run -p 3000:3000 dev1703/hello_world_node_app
```

Visit `http://localhost:3000` — and enjoy 🎉

---

## 📦 Image Info

- **Docker Image Name**: `dev1703/hello_world_node_app`
- **Visibility**: Public
- **Base Image**: `node:22-apline`
- **Exposed Port**: `3000`

---

## 📌 Notes

- This project is a minimal starting point for containerizing Node.js apps.
- Ideal for Docker beginners to understand the full dev-to-deploy cycle.
- Feel free to fork and extend it!

