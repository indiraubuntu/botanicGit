# Use the official Python image as the base image
FROM python:3.8

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install  and other dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
ENV PORT=8000

# Run the  app
CMD uvicorn app:app --host 0.0.0.0 --port $PORT
