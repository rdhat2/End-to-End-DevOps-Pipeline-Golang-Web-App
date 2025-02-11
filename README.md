# **Go Web Application - End to End DevOps Pipeline**

This repository contains a simple Go web application that has been containerized using Docker.

Getting Started

### **Prerequisites**

Ensure you have the following installed on your system:

Go (Version 1.23.6 or later)

Docker

### **Running Locally**

To run the application locally, follow these steps:

# Initialize a Go module (if not already done)
go mod init myapp

# Build the application
go build -o main .

# Run the application
go run main.go

The server should now be running. You can access it at http://localhost:8080 (or the specified port in your application).

### **Dockerization**

Once the application has been containerized using Docker. Follow these steps to build and run the container:

# Building the Docker Image

docker build -t your-docker-username/go-web-app:v1 .

# Running the Container

docker run -p 8080:8080 your-docker-username/go-web-app:v1

This maps the container’s port 8080 to the host machine’s port 8080.


