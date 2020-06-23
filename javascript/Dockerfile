FROM node:12.18.1-slim
COPY . /usr/src/ppt
WORKDIR /usr/src/ppt
RUN chmod 777 start.sh
ENTRYPOINT [ "./start.sh" ]