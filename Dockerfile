FROM alpine:latest

RUN apk --no-cache add curl

RUN mkdir -p /opt/so-data

RUN curl --request GET \
     --url 'http://downloads.brentozar.com.s3.amazonaws.com/StackOverflow2010.7z'\
     --output '/opt/so-data/StackOverflow2010.7z' 