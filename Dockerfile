FROM python:3.7-alpine
RUN apk add --update --no-cache bash ca-certificates curl git jq openssh
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN mkdir -p /config
COPY .yamllint /config
RUN chmod -R 777 /config
ENTRYPOINT [ "python" ]