# efbwechat
[![](https://images.microbadger.com/badges/image/fourstring/efb_wechat_base.svg)](https://microbadger.com/images/fourstring/efb_wechat_base "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/fourstring/efb_wechat_base.svg)](https://microbadger.com/images/fourstring/efb_wechat_base "Get your own version badge on microbadger.com")

Forward messages between WeChat and Telegram with this Docker image.

# How to use
1. Clone files.
2. Edit Telegram Master Channel Configuration `efbwechat_configs/blueset.telegram/config.yaml`, replace contents with your own `Bot API Key` and `Telegram User ID`.
3. Start service using docker-compose.  

```bash
wget https://github.com/fourstring/efbwechat/archive/master.zip && unzip master.zip
cd efbwechat-master
docker-compose up -d
docker-compose logs
```
