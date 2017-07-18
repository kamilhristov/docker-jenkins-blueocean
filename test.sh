#!/bin/bash

docker build -t jenkins:blueocean .

i=0
time dgoss run jenkins:blueocean || ((i++))
time dgoss run -e JENKINS_OPTS="--httpPort=8080 --httpsPort=-1" -e JAVA_OPTS="-Xmx1048m" jenkins:blueocean || ((i++))

exit $i
