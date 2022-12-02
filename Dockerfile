FROM eclipse-temurin:17.0.5_8-jdk

ENV KAFKA_VERSION 2.8.1
ENV SCALA_VERSION 2.13
# https://kafka.apache.org/downloads

ENV BASE_DIR /opt

RUN curl "https://archive.apache.org/dist/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz" | tar xzv -C "$BASE_DIR" \
    && ln -s "kafka_${SCALA_VERSION}-${KAFKA_VERSION}" "${BASE_DIR}/kafka"
ENV PATH /opt/kafka/bin:$PATH

CMD ["bash"]
