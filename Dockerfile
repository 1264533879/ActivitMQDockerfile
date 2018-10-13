FROM java
RUN docker run -d -it --name mq -p 8161:8161 -p 61616:61616 java \
ADD http://www.apache.org/dyn/closer.cgi?filename=/activemq/5.15.6/apache-activemq-5.15.6-bin.tar.gz&action=download /usr/local 
RUN  docker exec -it mq bash \
     && cd /usr/local \
     && tar -zxvf apache-activemq-5.15.6-bin.tar \
     && cd apache-activemq-5.15.6/bin \
     && ./activemq start


