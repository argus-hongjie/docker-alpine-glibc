FROM alpine:3.4
MAINTAINER Elifarley <elifarley@gmail.com>
ENV \
  BASE_IMAGE=alpine:3.4 \
  LANG=C.UTF-8

RUN apk --no-cache add ca-certificates curl && \
curl -fsSL https://raw.githubusercontent.com/elifarley/cross-installer/master/install.sh | sh && \
  xinstall install glibc && \
  xinstall save-image-info && \
  xinstall remove-pkg ca-certificates curl && \
  xinstall cleanup
