# Docker-SpringBoot-Redis
Build jar : 
mvn package

Test jar : 
java -jar docker-spring-boot-demo-0.0.1-SNAPSHOT.jar

Pull redis : 
docker pull redis

Run redis : 
docker run --name redis -d redis

Build secondsprintbootredis docker : 
docker build -t secondspringbootredis .

Rund secondsprintbootredis and link to redis : 
docker run -it -p 80:80 --link redis:redis secondspringbootredis /bin/bash

visit url: 
http://HOSTIP/count
