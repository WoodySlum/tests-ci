# Dockerfile
FROM python:3.10

WORKDIR /app
COPY . /app

RUN pip install poetry && poetry install --no-root

CMD ["poetry", "run", "python", "src/main.py"]
