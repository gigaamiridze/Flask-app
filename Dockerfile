FROM python:3.10.8-slim-bullseye

WORKDIR /usr/src/app

# Copy all files into the container
COPY . .

ENV FLASK_APP=app \
    FLASK_ENV=production

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 7777

CMD ["python", "app.py"]