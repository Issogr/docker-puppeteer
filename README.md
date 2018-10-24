# node-puppeteer

## Snippets

```bash
docker create --name=puppeteer \
-e PGID=1000 -e PUID=1000 \
-e TZ=Europe/Rome \
-v <local project dir>:/home/pptruser/app \
issogr/node-puppeteer:latest
```

```bash
docker start puppeteer
```

## Note

The default docker user is node id=1000 uid=1000.

Below command is essential for root sandbox environmentthe creation.

```bash
--cap-add=SYS_ADMIN
```

## Manual Build

```bash
git clone https://github.com/issogr/node-puppeteer.git
cd node-puppeteer
bash build.sh
```

## Work inspired by
* Docker-node https://github.com/nodejs/docker-node#run-a-single-nodejs-script
* Official Google Guide https://github.com/GoogleChrome/puppeteer/blob/master/docs/troubleshooting.md