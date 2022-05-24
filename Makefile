.PHONY: run

example-linux:
	CC='zig cc -target x86_64-linux-musl' CGO_ENABLED=1 GOOS=linux GOARCH=amd64 go build -o example-linux .

run: example-linux
	docker run --rm --platform linux/amd64 -v $(PWD):/app alpine /app/example-linux
