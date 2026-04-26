FROM python:3.10-slim

WORKDIR /project

COPY  requirements.txt .
RUN pip install -r requirements.txt

COPY app/ app/

COPY sample.log .

CMD ["python", "-m", "app.analyzer", "sample.log"]
