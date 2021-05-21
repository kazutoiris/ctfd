FROM ctfd/ctfd

RUN git clone https://github.com/frankli0324/CTFd-Whale /opt/CTFd/CTFd/plugins/CTFd-Whale \
    && git clone https://github.com/itszn/ctfd-matrix-scoreboard-plugin /opt/CTFd/CTFd/plugins/ctfd-matrix-scoreboard-plugin \
    && pip install /opt/CTFd/CTFd/plugins/CTFd-Whale/requirements.txt \
    && pip3 install /opt/CTFd/CTFd/plugins/CTFd-Whale/requirements.txt

USER 1001

EXPOSE 8000

ENTRYPOINT ["/opt/CTFd/docker-entrypoint.sh"]
