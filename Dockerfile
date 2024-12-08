# Use Red Hat Universal Base Image with Python 3.9
FROM registry.access.redhat.com/ubi8/python-39

# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the Flask app runs on
EXPOSE 8080

# Set the entrypoint to run the Flask app
CMD ["python", "app.py"]
