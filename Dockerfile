# Pull base image
FROM python:3.7

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /petal

# Install dependencies
COPY Pipfile Pipfile.lock /petal/
RUN pip install pipenv
RUN pipenv install --system

# Copy project
COPY . /petal/