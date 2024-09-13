FROM python:3.11-slim

RUN pip install aim

WORKDIR /app
RUN aim init
COPY run.sh .
RUN chmod +x run.sh

RUN apt update
RUN apt install -y curl

ENTRYPOINT ["./run.sh"]
