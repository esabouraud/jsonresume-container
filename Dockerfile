FROM node:alpine

RUN apk add --update --no-cache chromium

RUN mkdir /jsonresume

WORKDIR /jsonresume

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

ENV CHROMIUM_PATH /usr/bin/chromium-browser

ENV PUPPETEER_EXECUTABLE_PATH=${CHROMIUM_PATH}

ENV RESUME_PUPPETEER_NO_SANDBOX=1

RUN npm install -g resume-cli

RUN npm install \
        jsonresume-theme-even \
        jsonresume-theme-flat \
        jsonresume-theme-elegant \
        jsonresume-theme-paper

ENTRYPOINT ["resume"]

CMD ["--help"]
