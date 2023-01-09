## Build venv
FROM python:3.11.1-alpine3.17 AS build

ENV POETRY_VERSION=1.3.0 \
    PYTHONFAULTHANDLER=1 \
    PYTHONHASHSEED=random \
    PYTHONUNBUFFERED=1

RUN python -m pip install poetry==$POETRY_VERSION

WORKDIR /app
RUN python -m venv /app/venv

COPY pyproject.toml poetry.lock ./
# Allows me to tweak the dependency installation.
ARG POETRY_OPTIONS
RUN . /app/venv/bin/activate \
    && poetry install $POETRY_OPTIONS

## Beginning of runtime image
FROM  python:3.11.1-alpine3.17 as runtime
EXPOSE 8080

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

COPY --from=build /app/venv /app/venv/
ENV PATH /app/venv/bin:$PATH

WORKDIR /app
COPY . ./

ENTRYPOINT [ "uvicorn", "--host", "0.0.0.0", "--port", "8080", "main:app"] 