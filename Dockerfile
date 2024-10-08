FROM python:3.11-slim

RUN apt update
RUN apt install -y curl

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app
RUN aim init

COPY run.sh .
RUN chmod +x run.sh

ENTRYPOINT ["./run.sh"]
