# Use an official Python runtime as a base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements files
COPY requirements.txt /app/

# Install any necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files into the working directory
COPY . /app/

# Expose port 8501 for the Streamlit app
EXPOSE 8501

# Entry point to run the Streamlit app
CMD ["streamlit", "run", "streamlit-main.py", "--server.port=8501", "--server.address=0.0.0.0"]
