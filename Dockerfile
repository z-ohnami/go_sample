FROM alpine

WORKDIR /workspace
COPY gopath/bin/go_sample /go/bin/go_sample

ENTRYPOINT /go/bin/go_sample
