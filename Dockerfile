
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install flask==2.1.*
COPY . /
ENV FLASK_APP=app
EXPOSE 9090
CMD flask run --host 127.0.0.1 --port 9090
