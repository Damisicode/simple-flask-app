# Base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the packages in the requirements.txt
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . .

# Expost the port the Flask application will be listening on
EXPOSE 5000

# Set environment variables
ENV DOCKER_USERNAME=$DOCKER_USERNAME

# Run the flask Application
CMD ["python", "app.py"]
