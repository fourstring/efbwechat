FROM ubuntu
ARG APT_PACKAGES="python3 python3-pip git ffmpeg libmagic-dev libwebp-dev"
COPY requirements.txt /root/.ehforwarderbot/profiles/default/requirements.txt
# pip packages first
RUN cd /root/.ehforwarderbot/profiles/default && \
    apt -y update && \
    apt -y install ${APT_PACKAGES} && \
    pip3 install -r requirements.txt

# middlewares
RUN cd /usr/local/src && \
    git clone https://github.com/catbaron0/efb-sticker2img-middleware && \
    cd efb-sticker2img-middleware && \
    python3 setup.py install && \
    rm /root/.ehforwarderbot/profiles/default/requirements.txt

WORKDIR /root/.ehforwarderbot/profiles/default/
CMD [ "ehforwarderbot" ]