# Use an official base image
FROM gcc:latest

# Install additional packages
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    # other packages as needed

# Set working directory
WORKDIR /usr/src/myapp

# Copy files into the container
COPY . .

# Default command
CMD ["bash"]
