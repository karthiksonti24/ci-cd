FROM ubuntu

MAINTAINER Karthik Sonti "karthiksonti@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

WORKDIR /app

COPY . /app

RUN pip3 install -r requirements.txt

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]