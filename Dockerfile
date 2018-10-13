FROM java
RUN docker run -d -it --name mq -p 8161:8161 -p 61616:61616 java \
ADD https://github.com/1264533879/tar.git /usr/local 
RUN  docker exec -it mq bash \
     && cd /usr/local \
     && tar -zxvf apache-activemq-5.15.3-bin.tar \
     && cd apache-activemq-5.15.3/bin \
     && ./activemq start


