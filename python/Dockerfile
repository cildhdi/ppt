FROM python:3.9.0b3-buster
COPY . /usr/src/ppt
WORKDIR /usr/src/ppt
RUN chmod 777 start.sh
ENTRYPOINT [ "./start.sh" ]