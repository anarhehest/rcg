Author declares the following:

feel free to fork and make improvements for the app

Requirements (or just req): 
* [Python3](https://www.python.org/)
* [Flask](https://flask.palletsprojects.com/) - web-server
* [Ngrok](https://ngrok.com/) (if you want to use it)
* [Docker](https://www.docker.com/) (same as above)

### 1

\+ req: \*nix-like system

Run ./run_dockerfile.sh to build and run container from Dockerfile.

### 2

Inside the container, you need to put your ngrok token to .dockerenv file,
and run:
```
. .dockerenv
ngrok authtoken $NGROK_AUTHTOKEN
ngrok http 80
```

If your token is correct, the debug page [localhost:4040](http://localhost:4040/) should appear, and your app should be accessed via ngrok-link you configured for your token.