# efbwechat
[![](https://images.microbadger.com/badges/image/fourstring/efb_wechat_base.svg)](https://microbadger.com/images/fourstring/efb_wechat_base "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/fourstring/efb_wechat_base.svg)](https://microbadger.com/images/fourstring/efb_wechat_base "Get your own version badge on microbadger.com")

Forward messages between WeChat and Telegram with this Docker image.

# Features
* Send stickers you like to your WeChat contacts, those stickers will be converted into JPEG.
* Send and receive files with Chinese filename in Telegram by using appropirate version of upstream packages.
* All configurations are stored under `efbwechat_configs` directory and you can modified it without rebuilding the whole image or typing long long command with the help of docker-compose.

# How to use
0. Install docker and docker-compose.
1. Clone files.
2. Edit Telegram Master Channel Configuration `efbwechat_configs/blueset.telegram/config.yaml`, replace contents with your own `Bot API Key` and `Telegram User ID`.
3. Start service using docker-compose.  

```bash
wget https://github.com/fourstring/efbwechat/archive/master.zip && unzip master.zip
cd efbwechat-master
docker-compose up -d
docker-compose logs
```

# Acknowledgement
* Authors of all upstream projects used in this image.
* Friends from [EFB Support Group](https://t.me/joinchat/FLrhEECb6bgWdDTFyd6Suw), they find the right combination of upstream packages so that we can send and receive files whose names are in Chinese after retrying for plenty of times.