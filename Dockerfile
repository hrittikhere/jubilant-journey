# Use the official Python 3.8 image from the Alpine Linux repository
FROM python:3.8-alpine

# Copy the contents of the "deploy/" directory from the build context to the "/deploy" directory in the container
COPY deploy/ /deploy

# Set the working directory to "/deploy"
WORKDIR /deploy

# Install the Python dependencies listed in the "requirements.txt" file using pip
RUN pip install -r requirements.txt 

# Expose port 5000 for incoming connections
EXPOSE 5000

# Set the default command to run when the container starts
CMD ["python", "app.py", "--host=0.0.0.0"]

