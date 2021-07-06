FROM alpine:3 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh python2 python3 py3-pip"]

COPY ["src", "/src/"]

RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py && python get-pip.py

RUN pip install hvac==0.10.10

RUN pip3 install hvac==0.10.10

ENTRYPOINT ["/src/main.sh"]
