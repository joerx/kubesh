FROM alpine:3.6

RUN apk --no-cache add bash curl bind-tools iputils postgresql-client

CMD ["/bin/bash"]
