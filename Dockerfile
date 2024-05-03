FROM node:22-alpine3.18

RUN echo -e "https://mirrors.ustc.edu.cn/alpine/v3.18/main\nhttps://mirrors.ustc.edu.cn/alpine/v3.18/community" > /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk --no-cache add ca-certificates

RUN npm install -g whistle@2.9.70

ENTRYPOINT ["w2", "run"]

EXPOSE 8899