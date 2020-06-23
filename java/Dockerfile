FROM openjdk:jdk-oraclelinux7
COPY . /usr/src/ppt
WORKDIR /usr/src/ppt
RUN chmod 777 start.sh
ENTRYPOINT [ "./start.sh" ]