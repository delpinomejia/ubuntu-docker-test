# Use the official Ubuntu as a base image
FROM ubuntu:latest

# Set environment variables (optional)
ENV DEBIAN_FRONTEND=noninteractive

# Update the package lists
RUN apt-get update

# Install required packages
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y apt-utils

# Clean up the package cache to reduce the image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set the default working directory
WORKDIR /app

# (Optional) Copy your application code into the container
# COPY . /app

# (Optional) Expose ports or other configurations if needed
# EXPOSE 8080

# (Optional) Define an entry point
# ENTRYPOINT ["./your_entry_script.sh"]

# (Optional) Define a default command to run when the container starts
# CMD ["./your_default_command.sh"]
