FROM ubuntu:18.04
COPY . /app
WORKDIR /app
RUN apt-get update \
    && apt-get install -y \
      curl \
      python-dev \
      python-pip 

ENV my_ver 1.0

RUN pip install -r requirement.txt

CMD ["python", "app.py"]
