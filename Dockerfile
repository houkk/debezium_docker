FROM debezium/connect:1.0

LABEL maintainer="hk"

USER root

COPY start.sh /

ENV DB_CONFIG_DIR=/kafka/dbconfig

RUN mkdir ${DB_CONFIG_DIR} && \
    chmod +x /start.sh && \
    yum install wget -y && \
    yum clean all

#USER kafka

ENTRYPOINT [ "/start.sh" ]
CMD [ "start" ]