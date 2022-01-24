FROM python:3.8-alpine
LABEL maintainer="Juan Miguel Martin Cabello"

ARG USER_ID
ARG GROUP_ID

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN /usr/local/bin/python -m pip install --upgrade pip

RUN mkdir /app
RUN adduser -D -g '' -u $USER_ID user
RUN chown $USER_ID:$GROUP_ID /app
USER user
WORKDIR /app
RUN pip install -r /requirements.txt
COPY ./app /app
