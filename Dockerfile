FORM java
RUN docker run -d --name ActivitMQ -p 8161:8161 -p 61616:61616 java \
     && docker cp ./apache-activemq-5.15.3-bin.tar ActivitMQ:/usr/local \
     && docker exec -it ActivitMQ \
     && cd /usr/local \
     && tar -zxvf apache-activemq-5.15.3-bin.tar \
     && cd apache-activemq-5.15.3-bin/bin \
     && ./activemq start


