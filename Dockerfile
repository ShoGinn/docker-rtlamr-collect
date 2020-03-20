FROM golang:latest

RUN go get github.com/bemasher/rtlamr
RUN go get github.com/bemasher/rtlamr-collect

RUN chmod a+x ./bin/rtlamr*

CMD ["sh", "-c", "./bin/rtlamr | ./bin/rtlamr-collect"]
