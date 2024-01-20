The following is my implementation of a simple (too simple, I have to say) Flask app, what I would just like to save. 

----

Requirements:
* Any browser with JS support
* [Python3](https://www.python.org/)
* [Flask](https://flask.palletsprojects.com/) - web-server
* [Ngrok](https://ngrok.com/) (if you want to use it)
* [Docker](https://www.docker.com/) (same as above)

### 0

Firsts are first, you can just run `rcg.js` script, which is just changing colors in pseudo-random way, by opening `./templates/root.html` in your brouwser.
Also, it could be run with a Python web-server, Flask: `python3 ./app.py`

#### Following steps are not required.

### 1

Let's install ngrok. Run `./run_dockerfile.sh` to build and run container from Dockerfile. You need to use Shell/Bash/Zsh/etc. CLI to run it.
Please use Docker documentation if you are not.

### 2

Inside a container, you need to put your ngrok token to .dockerenv file in this way:
``` sh
NGROK_AUTHTOKEN=here_should_be_your_token
```

... and then run:

``` sh
. .dockerenv
ngrok authtoken $NGROK_AUTHTOKEN
ngrok http 3000
```

For the future runs, config with this token should be automatically saved to `/root/.ngrok2/ngrok.yml`.

If your token is correct, the debug page should appear on [localhost:4040](http://localhost:4040/), and your app should be accessable via ngrok-link configured for your token. For me it was like this one:
http://326a-2a00-102a-5015-2b87-acf2-afa7-e523-513a.ngrok-free.app
