# efbwechat
Forward messages from WeChat to Telegram with this Docker image.

# How to use
1. Clone files.
2. Edit Telegram Master Channel Configuration `blueset.telegram/config.yaml`, replace contents with your own `Bot API Key` and `Telegram User ID`.
3. Build Docker image and run.  

Get files:
```bash
git clone https://github.com/fourstring/efbwechat
cd efbwechat
docker build -f Dockerfile.dockerfile -t wechat .
```
And start a container:
```
docker run -d --name wechat wechat
docker logs -f wechat
```
