FROM debezium/connect:1.7

USER root

RUN microdnf -y install unzip && microdnf clean all

USER kafka

ENV KAFKA_CONNECT_ES_DIR=$KAFKA_CONNECT_PLUGINS_DIR/kafka-connect-elasticsearch

ARG KAFKA_ELASTICSEARCH_VERSION=11.1.4

# Deploy Kafka Connect Elasticsearch
RUN mkdir $KAFKA_CONNECT_ES_DIR && cd $KAFKA_CONNECT_ES_DIR && \
    curl -sO https://d1i4a15mxbxib1.cloudfront.net/api/plugins/confluentinc/kafka-connect-elasticsearch/versions/${KAFKA_ELASTICSEARCH_VERSION}/confluentinc-kafka-connect-elasticsearch-${KAFKA_ELASTICSEARCH_VERSION}.zip && \
    unzip confluentinc-kafka-connect-elasticsearch-${KAFKA_ELASTICSEARCH_VERSION}.zip && \
    rm confluentinc-kafka-connect-elasticsearch-${KAFKA_ELASTICSEARCH_VERSION}.zip