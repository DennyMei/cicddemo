# 使用官方 Node 运行时作为基础镜像
FROM public.ecr.aws/docker/library/node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制依赖文件
COPY package.json ./

# 安装依赖
RUN npm install --production

# 复制源代码
COPY app.js ./

# 暴露端口
EXPOSE 3000

# 启动应用
CMD ["node", "app.js"]