# Wine/Lutris contained<br/><i>Containerize Wine and Lutris!</i>

## Prerequisites
1. [Docker](https://docs.docker.com/get-started/)
2. [Docker Compose](https://docs.docker.com/compose/install/)
3. git
4. xorg-xhost
5. [docker-rootless](https://docs.docker.com/engine/security/rootless/)
    - not necessary

## How to use
1. Clone this repository
    - ```git clone https://github.com/bonohub13/wine_contained```
2. Run the init script
    - ```cd wine_contained && ./init_run.sh```
3. Build the docker image with docker-compose
    - ```docker-compose build```
4. Allow the container to gain access to X
    - ```xhost +local:$(whoami)```
5. Launch the container detached
    - ```docker-compose up -d```
