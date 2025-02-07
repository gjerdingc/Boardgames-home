# base image  
FROM python:3.9.6-buster

# install dependencies  
RUN pip install --upgrade pip  
 
COPY ./requirements.txt .
RUN pip install -r requirements.txt  

COPY ./app /app

WORKDIR /app

COPY ./entrypoint.sh /
ENTRYPOINT [ "sh", "/entrypoint.sh"]

