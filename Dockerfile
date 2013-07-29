# VERSION   0.2
# DOCKER-VERSION  0.4.0

from  ubuntu:12.10

run   echo "deb http://archive.ubuntu.com/ubuntu quantal main universe" > /etc/apt/sources.list
run   apt-get -y update
run   apt-get -y install wget git redis-server
run   apt-get -y install build-essential python
run   apt-get -y install libexpat1-dev libexpat1 libicu-dev

run   wget -O - http://nodejs.org/dist/v0.11.0/node-v0.11.0-linux-x64.tar.gz | tar -C /usr/local/ --strip-components=1 -zxv
run   npm install coffee-script hubot -g
run   hubot --create .
run   npm install --save hubot-hipchat
run   chmod 755 bin/hubot 

run   apt-get -y install supervisor
run   mkdir -p /var/log/supervisor

add   hubot-scripts.json hubot-scripts.json
add   ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

env   HUBOT_HIPCHAT_JID [asdfID]@chat.hipchat.com
env   HUBOT_HIPCHAT_PASSWORD [your-password]
env   HUBOT_AUTH_ADMIN [your name]

cmd   supervisord -n
