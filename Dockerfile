FROM golang

RUN mkdir -p $GOPATH/src/golang-k8s-client
COPY go.mod $GOPATH/src/golang-k8s-client
COPY go.sum $GOPATH/src/golang-k8s-client

WORKDIR $GOPATH/src/golang-k8s-client
RUN go get -d -v k8s.io/client-go@kubernetes-1.18.2
RUN go get -d -v k8s.io/apimachinery@kubernetes-1.18.2
