FROM alpine:3.20
RUN apk add --no-cache curl unzip ca-certificates && curl -L -o /tmp/Xray-linux-64.zip https://github.com/XTLS/Xray-core/releases/download/v26.11.9/Xray-linux-64.zip && unzip /tmp/Xray-linux-64.zip -d /usr/local/bin && rm /tmp/Xray-linux-64.zip
WORKDIR /app
COPY config.json start.sh ./
RUN chmod +x start.sh
CMD sh start.sh
