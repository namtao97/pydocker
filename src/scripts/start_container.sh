#!/bin/bash

# run a docker container
sudo docker run -d --name $1 --user guest --rm -it pydocker /bin/bash