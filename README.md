# docker-java-springboot-hello-world
Hello World example with Java Springboot and Docker

## Usage

Get the source:

```
$ git clone https://github.com/ruanbekker/docker-java-springboot-hello-world
$ cd docker-java-springboot-hello-world
```

Build and run:

```
$ docker-compose build
$ docker-compose up
```

Test:

```
$ curl -i http://localhost:8080
HTTP/1.1 200
Content-Type: text/plain;charset=UTF-8
Content-Length: 13
Date: Wed, 02 Sep 2020 12:49:27 GMT

Hello, World!
```

Healthcheck:

```
$ curl -i http://localhost:8080/actuator/health
HTTP/1.1 200
Content-Type: application/vnd.spring-boot.actuator.v3+json
Transfer-Encoding: chunked
Date: Thu, 25 Feb 2021 13:30:09 GMT

{"status":"UP"}
```
