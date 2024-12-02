# Specify the base image
FROM python:3.11-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose the port the app will run on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "Sample.py"]
