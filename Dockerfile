FROM reruin/sharelist:next
MAINTAINER reruin <reruin@gmail.com>

ENV PORT 33001
EXPOSE 33001

RUN mkdir -p /sharelist/cache 

RUN chmod -R 777 /sharelist/cache 

ADD deploy.sh /deploy.sh

RUN chmod +x /deploy.sh 

CMD /deploy.sh