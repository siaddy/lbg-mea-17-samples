FROM ubuntu

COPY script.sh message.sh

RUN chmod +x message.sh

RUN apt-get update

RUN apt-get install cowsay -y

ENV string="Hello from this container"

ENTRYPOINT ["./message.sh"]
