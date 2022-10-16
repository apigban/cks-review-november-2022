FROM ubuntu:focal-20220922
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y golang-go=2:1.13~1ubuntu2
COPY app.go .
RUN CGO_ENABLED=0 go build app.go
CMD ["./app"]

FROM alpine:3.16.2
COPY --from=0 /app . 
CMD ["./app"]