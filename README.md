# Wine/Lutris contained<br/><i>Containerize Wine and Lutris!</i>

## Prerequisites
1. [docker]
2. [docker-compose]
3. git
4. [docker-rootless]
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
