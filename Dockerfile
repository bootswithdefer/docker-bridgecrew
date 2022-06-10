FROM python:3-slim

MAINTAINER Jesse DeFer <docker-bridgecrew@dotd.com>

RUN pip install bridgecrew
RUN apt update && apt install openssh-client git -y
RUN ssh-keyscan github.com > /etc/ssh/ssh_known_hosts
