
FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -y install python3 python3-pip vim

RUN pip3 install flask

COPY app.py /opt/app.py

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
