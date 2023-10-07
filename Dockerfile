FROM golang:1.21.1-alpine3.14

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /finances

EXPOSE 8080

CMD [ "/finances" ]