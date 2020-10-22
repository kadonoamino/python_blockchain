FROM python:3.7-alpine
MAINTAINER Shu Kadono

ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r requirements.txt

WORKDIR /pyblockchain

CMD ["python", "blockchain.py"]