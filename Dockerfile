FROM node:8-slim

RUN apt-get update && \
  apt-get install -yq git gconf-service libasound2 libatk1.0-0 libatk-bridge2.0-0 libc6 libcairo2 libcups2 \
  libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 \
  libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 \
  libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates \
  fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget libcairo-gobject2 libxinerama1 \
  libgtk2.0-0 libpangoft2-1.0-0 libthai0 libpixman-1-0 libxcb-render0 libharfbuzz0b libdatrie1 \
  libgraphite2-3 --no-install-recommends && \
  apt-get clean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/* && rm -rf /src/*.deb

RUN usermod -a -G audio,video node

COPY ./entry.sh /home/node

RUN chmod +x /home/node/entry.sh && mkdir -p /home/node/app && chown -R node:node /home/node

WORKDIR /home/node/app

# Run everything after as non-privileged user.
USER node

ENTRYPOINT [ "/home/node/entry.sh" ]