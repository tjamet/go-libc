FROM golang:1.8
RUN  go get github.com/Masterminds/glide && mv /go/bin/glide /bin/glide && rm -rf /go/*/*
ENTRYPOINT ["/bin/glide"]
