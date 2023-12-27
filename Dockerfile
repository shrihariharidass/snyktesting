# Use a secure base image with recent updates
FROM ubuntu:22.04  # Or another suitable base image

# Install essential dependencies
RUN apt-get update && apt-get install -y \
    curl \
    python3 \
    ...  # Other required dependencies

# Copy application code to the container
COPY . /app

# Set the working directory
WORKDIR /app

# Install application-specific dependencies
RUN pip3 install -r requirements.txt

# Expose necessary ports for the application
EXPOSE 8080

# Start the application
CMD ["python3", "app.py"]
