ARG base

FROM node:${base}

RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm

ENTRYPOINT [ "pnpm" ]

CMD [ "i" ]
