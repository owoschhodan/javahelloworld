FROM java:7
ENV FOO bar
COPY src/ /usr/src
WORKDIR /usr
RUN javac -d bin src/HelloWorld.java
RUN javac -d bin src/ToHell.java
CMD ["HelloWorld"]
#ENTRYPOINT ["java","-cp","/usr/bin/"]
WORKDIR /usr/bin
ENTRYPOINT ["java"]
