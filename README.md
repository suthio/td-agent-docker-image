i
# Development

Dockerfile for td-agent, pushed to dockers automated build process and public Docker hub registry.
Including plugins: fluent-plugin-kinesis, fluent-plugin-rewrite-tag-filter.

## Base Docker Image

* [amazonlinux:latest](https://hub.docker.com/r/_/amazonlinux/)


## Usage

```
docker run -d suthio/td-agent-docker-image
```

