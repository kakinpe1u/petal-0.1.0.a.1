# Pull base image
FROM python:3.7

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /petal-0.1.0.a.1

# Install dependencies
COPY Pipfile Pipfile.lock /petal-0.1.0.a.1/
RUN pip install pipenv
RUN pipenv install --system

# Copy project
COPY . /petal-0.1.0.a.1/