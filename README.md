# Dockerized Hubot in Hipchat

An experiment with hubot with the hipchat adapter on Docker.

The Docker container contains both Hubot as well as Redis.

## Deploying

* Change the name in `supervisord.conf`
* Setup the credentials in `Dockerfile`
* Run `docker build -t my-hubot .`
* Run `docker run -d my-hubot`

## Resources

The [hipchat-hubot](https://github.com/hipchat/hubot-hipchat) is a good place
to start as it describes how to setup both Hipchat and Hubot.

Hubot docs can be found in the [hubot repo](https://github.com/github/hubot).
