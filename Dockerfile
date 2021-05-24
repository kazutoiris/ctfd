FROM ctfd/ctfd

USER root

RUN git clone https://github.com/kazutoiris/ctfd-whale/ /opt/CTFd/CTFd/plugins/CTFd-Whale \
    && git clone https://github.com/itszn/ctfd-matrix-scoreboard-plugin /opt/CTFd/CTFd/plugins/ctfd-matrix-scoreboard-plugin \
    && pip install -r /opt/CTFd/CTFd/plugins/CTFd-Whale/requirements.txt \
    && pip3 install -r /opt/CTFd/CTFd/plugins/CTFd-Whale/requirements.txt \
    && apt-get update \
    && apt-get install vim curl -y

USER 1001

EXPOSE 8000

ENTRYPOINT ["/opt/CTFd/docker-entrypoint.sh"]
