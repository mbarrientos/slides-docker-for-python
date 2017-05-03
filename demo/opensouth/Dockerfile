FROM python:3.6

RUN apt-get update && \
    apt-get install -y \
        python-psycopg2

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
