# Python QA


[![Build Status](https://travis-ci.org/dbarbar/docker-pythonqa.svg?branch=master)](https://travis-ci.org/dbarbar/docker-pythonqa)


A container with python, flake8, and some flake8 plugins for doing static QA.

Run it with your code mounted at `/code` inside the container.


````
docker run -v ${PWD}:/code dbarbar/pythonqa:latest
````
