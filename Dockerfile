FROM ctfd/ctfd

RUN git clone https://github.com/glzjin/CTFd-Whale /opt/CTFd/CTFd/plugins/CTFd-Whale

RUN ls /opt/CTFd/CTFd/plugins/CTFd-Whale

USER 1001

EXPOSE 8000

ENTRYPOINT ["/opt/CTFd/docker-entrypoint.sh"]
