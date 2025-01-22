FROM alpine:latest

# 安装解压工具和运行必要环境
RUN apk add --no-cache curl unzip ca-certificates

# 下载 Xray 并解压
RUN curl -L https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip -o xray.zip && \
    unzip xray.zip && chmod +x xray && mv xray /usr/bin/

# 复制配置文件
COPY config.json /etc/xray/config.json

# 运行 Xray
CMD ["xray", "-config", "/etc/xray/config.json"]
