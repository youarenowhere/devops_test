#FROM java:8
FROM openjdk:8-jdk-alpine

# 复制jar到工作目录并改名为app.jar
# 相对于Dockerfile文件的路径
# ADD 命令必须提供两个参数，第一个参数为：宿主机中的目录，相对于Dockerfile文件
ARG JAR_FILE
COPY ${JAR_FILE} app.jar

# VOLUME 指定了临时文件目录为/log。
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/log
VOLUME /log

##时区问题
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezon


EXPOSE 8081
# ENTRYPOINT ["java","-jar","/app.jar","--spring.profiles.active=prod"]
ENTRYPOINT ["java","-jar","/app.jar"]



