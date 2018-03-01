FROM node:alpine

RUN echo -e "https://mirrors.ustc.edu.cn/alpine/latest-stable/main\nhttps://mirrors.ustc.edu.cn/alpine/latest-stable/community" > /etc/apk/repositories && \
    apk update && \
    apk upgrade

RUN npm install cnpm -g --registry=https://registry.npm.taobao.org

RUN cnpm install -g whistle

ENTRYPOINT ["whistle", "run"]

EXPOSE 8899
EXPOSE 8900