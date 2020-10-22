FROM golang
COPY game_of_life.go .
RUN go build game_of_life.go

FROM scratch
COPY --from=0 go/game_of_life .
CMD ["./game_of_life"]