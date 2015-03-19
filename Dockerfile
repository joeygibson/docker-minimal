FROM scratch
# FROM google/golang:latest
ADD helloworld /helloworld
CMD ["/helloworld"]
