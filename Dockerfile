FROM ubuntu:latest
MAINTAINER Faraz Fallahi <fffaraz@gmail.com>
ENTRYPOINT ["minergate-cli", "-user" , "fffaraz@gmail.com", "-xmr"]
RUN \
	apt update && \
	apt install -y wget && \
	wget https://minergate.com/download/deb-cli && \
	dpkg -i deb-cli
