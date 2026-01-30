FROM python:3.14-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip \
    && pip install "Django>=6.0" "psycopg[binary]>=3.2"

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
