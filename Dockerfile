FROM centos:8
RUN dnf install -y python38
RUN pip install pytest
ENTRYPOINT [ "/bin/bash" ]