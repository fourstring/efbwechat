FROM ubuntu
ARG APT_PACKAGES="python3 python3-pip git ffmpeg libmagic-dev libwebp-dev"
COPY ./* /root/.ehforwarderbot/profiles/default/
COPY blueset.telegram /root/.ehforwarderbot/profiles/default
COPY blueset.wechat /root/.ehforwarderbot/profiles/default
COPY catbaron.sticker2img /root/.ehforwarderbot/profiles/default

# pip packages first
RUN cd /root/.ehforwarderbot/profiles/default && \
    apt -y update && \
    apt -y install ${APT_PACKAGES} && \
    pip3 install -r requirements.txt

# middlewares
RUN cd /usr/local/src && \
    git clone https://github.com/catbaron0/efb-sticker2img-middleware && \
    cd efb-sticker2img-middleware && \
    python3 setup.py install

WORKDIR /root/.ehforwarderbot/profiles/default/
CMD [ "ehforwarderbot" ]