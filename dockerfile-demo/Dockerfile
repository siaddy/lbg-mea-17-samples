FROM ubuntu:latest

COPY hello.sh hello.sh
ENV var1="this is v2"
RUN chmod +x hello.sh

ENTRYPOINT ["./hello.sh"]
