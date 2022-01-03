#from ubuntu:21.10
from ubuntu:latest
WORKDIR /home/
COPY rails.sh /home/rails.sh

run ./rails.sh
