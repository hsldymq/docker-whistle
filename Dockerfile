FROM node:18-alpine3.17

RUN echo -e "https://mirrors.ustc.edu.cn/alpine/v3.17/main\nhttps://mirrors.ustc.edu.cn/alpine/v3.17/community" > /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk --no-cache add ca-certificates

RUN npm install -g whistle --registry=https://registry.npm.taobao.org

ENTRYPOINT ["w2", "run"]

EXPOSE 8899
EXPOSE 8900