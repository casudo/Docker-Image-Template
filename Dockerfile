FROM python:3.12.0

### Set working directory and copy files
RUN mkdir /code
WORKDIR /code
ADD . /code/

### Create log file
RUN touch /code/script.log

### Make script executable
RUN chmod 770 /code/CHANGEME.py

### Install dependencies
RUN pip install -r requirements.txt
RUN apt-get -y update && apt-get -y upgrade

### Set entrypoint
ENTRYPOINT ["/bin/bash", "/code/entrypoint.sh" ]