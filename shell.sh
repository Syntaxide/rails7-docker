#!/bin/bash
docker run -it --mount type=bind,source="$(pwd)"/..,target=/home rails7 /bin/bash 
