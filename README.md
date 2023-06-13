# docker-kafka-cli

An docker container including kafka cli scripts

## How to use

```
docker run -it --rm ikuwow/kafka-cli:latest
```

## Build

TODO: Automate

simple:
```
docker build --no-cache -t ikuwow/kafka-cli:0.1.0 .
docker tag ikuwow/kafka-cli:0.1.0 ikuwow/kafka-cli:latest
docker push ikuwow/kafka-cli:0.1.0
docker push ikuwow/kafka-cli:latest
```

For multi platforms:
```
docker buildx build --platform linux/amd64,linux/arm64 -t ikuwow/kafka-cli:0.1.0 --push .
```

## References

* https://kafka.apache.org/quickstart
* https://hub.docker.com/_/eclipse-temurin
