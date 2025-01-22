FROM teddysun/xray

# 添加配置文件
COPY config.json /etc/xray/config.json

# 启动命令
CMD ["xray", "-config", "/etc/xray/config.json"]
