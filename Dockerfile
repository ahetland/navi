FROM debian:buster
 
# prepare
RUN apt -y update && \
    apt-get -y install apt-utils && \
    apt-get -y install curl software-properties-common
 
 
# node + npm
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get -y install nodejs

# elm
#RUN npm install elm
#RUN npm install elm-test

WORKDIR /home
RUN curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz
RUN gunzip elm.gz && chmod +x elm && mv elm /usr/local/bin

ENV ELM_HOME=/home/.elm-home
RUN mkdir -p /home/.elm-home

 
# make elm reactor accessible
EXPOSE 8000 

CMD ["bash"]
#docker run -it --name elm -p 8000:8000 -v $(pwd)/src:/home/src elmir:1.0 
