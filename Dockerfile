ARG base
FROM node:${base}

ARG pnpm
RUN npm install -g pnpm@$pnpm

ENTRYPOINT [ "pnpm" ]

CMD [ "i" ]
