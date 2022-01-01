ARG base

FROM node:${base}

RUN if [[ -n $(type curl > /dev/null) && $(type apk > /dev/null) ]] ; then apk add curl ; fi
RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm

ENTRYPOINT [ "pnpm" ]

CMD [ "i" ]
