# 使用官方 Nginx 镜像
FROM nginx:alpine

# 暴露 Nginx 默认的 HTTP 端口
EXPOSE 80

# 启动 Nginx 服务
CMD ["nginx", "-g", "daemon off;"]
