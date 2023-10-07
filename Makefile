build:
	go build -o bin/finances ./cmd/api

run: build
	./bin/finances

test: go test -v ./...