# README

Created this sample Elixir project to run the application with Docker. It creates and defines a module that outputs "Hello, Elixir!" when called.

## Prerequisites
- Docker
- Elixir

## Getting Started

### 1. Create a new Elixir project named "hello_elixir"
```
mix new hello_elixir --module HelloWorld
``````

### 2. Build Docker Image
```
docker build -t hello_elixir .
```

### 3. Run the Docker container
```
docker run -d -p 3000:3000 --name hello_world_elixir hello_elixir:latest
```

### 4. To run the Application Locally:
```
mix run -e HelloWorld.hello
```

