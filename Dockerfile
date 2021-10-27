FROM golang:1.17.2-alpine as build

WORKDIR /go/src

COPY . .

RUN  go build

########################################################################

FROM scratch

WORKDIR /app

COPY --from=build /go/src/desafiogo  /app/desafio

CMD [ "./desafio" ]

