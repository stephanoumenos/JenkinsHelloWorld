
# FROM ubuntu
# 
# WORKDIR /code/
# 
# RUN apt update && apt install -y \
#     bash \
#     git \
#     default-jre \
#     wget tar
# 
# # Install maven
# 
# RUN cd /opt/
# RUN wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
# RUN tar -xvzf apache-maven-3.3.9-bin.tar.gz && mv apache-maven-3.3.9 maven
# RUN echo "export M2_HOME=/opt/maven" > /etc/profile.d/mavenenv.sh
# RUN echo "export PATH=${M2_HOME}/bin:${PATH}" >> /etc/profile.d/mavenenv.sh
# RUN /bin/bash -c "source /etc/profile.d/mavenenv.sh"
# 
# # Clone repository
# 
# RUN git clone --single-branch -b Java_Deployment https://github.com/stephanoumenos/JenkinsHelloWorld/
# 
# RUN cd JenkinsHelloWorld/HelloWorldJava/
# 
# RUN mvn package
# 
# RUN cd ..
# 
# RUN ./check_if_corerct.sh
# 
# RUN sleep 300

FROM openjdk
RUN mkdir -p /app/bin
ADD ./demo/target/demo-0.0.1-SNAPSHOT.jar /app/bin/demo.jar
EXPOSE 8080
CMD ["java", "-jar", "/app/bin/demo.jar"]
