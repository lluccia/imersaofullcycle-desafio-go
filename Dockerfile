# builder

FROM golang:1.18 as builder

WORKDIR /usr/src/app

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY go.mod ./
RUN go mod download && go mod verify

COPY . .
RUN go build -v -o /usr/local/bin/app ./...

# Runner

FROM scratch AS runner

WORKDIR /

# Copy from builder the final binary
COPY --from=builder /usr/local/bin/app /main

ENTRYPOINT ["/main"]