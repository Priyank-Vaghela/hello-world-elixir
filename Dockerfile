# Use an official Elixir runtime as the base image
FROM elixir:1.12.3

# Set the working directory inside the container
WORKDIR /app

# Copy the Elixir project files into the container
COPY hello_elixir/ .

# Install project dependencies
RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix deps.get

# Test the application
RUN mix test

# Compile the application
RUN mix compile

# Set the default command to run the application
CMD ["mix", "run", "--no-halt"]

