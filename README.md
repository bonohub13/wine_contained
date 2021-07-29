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
2. Build the docker image with docker-compose
    - ```cd wine_contained && docker-compose build```
3. Allow the container to gain access to X
    - ```xhost +local:$(whoami)```
4. Launch the container detached
    - ```docker-compose up -d```
