FROM python:3.10-alpine

WORKDIR /src

COPY . /src

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 443

# Run app.py when the container launches
CMD ["python", "./main.py"]
