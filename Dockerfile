FROM golang

RUN go get -d -v k8s.io/client-go@kubernetes-1.18.2
RUN go get -d -v k8s.io/apimachinery@kubernetes-1.18.2
