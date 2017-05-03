FROM python:3.6-slim

RUN pip install RISE && \
    jupyter-nbextension install rise --py --sys-prefix && \
    jupyter-nbextension enable rise --py --sys-prefix && \
    mkdir /data

VOLUME /data
WORKDIR /data
EXPOSE 8888
ENTRYPOINT ["jupyter-notebook"]
