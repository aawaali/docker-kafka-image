FROM aawaali/alpine-openjdk8
WORKDIR /home
COPY ./kafka.tgz .
RUN tar -xzf kafka.tgz
WORKDIR /home/kafka_2.12-2.6.0/config
RUN sed -i 's/localhost:2181/zookeeper:2181/g' server.properties
COPY ./entrypoint.sh /
RUN chmod a+x /entrypoint.sh
EXPOSE 9092
CMD ["/bin/bash"]
ENTRYPOINT ["/entrypoint.sh"]
