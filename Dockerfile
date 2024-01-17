FROM alpine:latest

RUN apk add --no-cache wget unzip && \
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && \
unzip ngrok-stable-linux-amd64.zip -d /usr/bin && \
rm ngrok-stable-linux-amd64.zip

EXPOSE 4040 80

CMD ["ngrok", "http", "80"]

	    
