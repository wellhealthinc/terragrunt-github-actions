FROM alpine:3 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh python2 python3 py3-pip"]

COPY ["src", "/src/"]

RUN pip install hvac

ENTRYPOINT ["/src/main.sh"]
