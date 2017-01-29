# Starting with the Python Image Docker is using
FROM python:3.5

# Everybody copy and pastes this.
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code
# ADD can do more than COPY, <src> can be a URL or a zip
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/