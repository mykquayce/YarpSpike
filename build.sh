#! /bin/bash

docker pull mcr.microsoft.com/dotnet/sdk:6.0
docker pull mcr.microsoft.com/dotnet/aspnet:6.0
docker pull loicsharma/baget:latest
docker pull pihole/pihole:latest


docker build --tag eassbhhtgu/yarp:latest .


docker stack deploy --compose-file ./docker-compose.yml yarp
