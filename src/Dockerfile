FROM python:3.10-alpine

WORKDIR /app

COPY ./src /app

RUN pip install -r requirements.txt

EXPOSE 443

# Run app.py when the container launches
CMD ["python", "./app/main.py"]
