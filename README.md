# node-puppeteer

## Snippets

```bash
docker create --name=puppeteer \
-e PGID=1000 -e PUID=1000 \
-e TZ=Europe/Rome \
-v <local project dir>:/home/pptruser/app \
node-puppeteer:latest
```

```bash
docker start puppeteer
```

## Note

```bash
--cap-add=SYS_ADMIN
```

It's essential for root sandbox environmentthe creation

## Manual Build

```bash
git clone https://github.com/Issogr/node-puppeteer.git
cd node-puppeteer
bash build.sh
```

## Work inspired by
* Docker-node https://github.com/nodejs/docker-node#run-a-single-nodejs-script
* Official Google Guide https://github.com/GoogleChrome/puppeteer/blob/master/docs/troubleshooting.md