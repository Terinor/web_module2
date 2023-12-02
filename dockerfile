# base image
FROM python:3.11.6-alpine3.17

# envir variable
ENV APP /1 mod

# working directory
WORKDIR $APP

# copy our directory
COPY . .


RUN pip install -r requirements.txt

# this what woud be started
ENTRYPOINT ["python", "main.py"]
