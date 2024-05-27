FROM golang:1.22.3 as builder

RUN go env -w GOPROXY=https://goproxy.cn,direct

WORKDIR /workspace

COPY . .

RUN go build -o /workspace/app

FROM golang:1.22.3

RUN go env -w GOPROXY=https://goproxy.cn,direct

WORKDIR /workspace

RUN go install github.com/go-delve/delve/cmd/dlv@latest

COPY --from=builder /workspace/app /workspace/app

ENTRYPOINT [ "dlv", "--listen=:2345", "--headless=true", "--api-version=2", "exec", "/workspace/app" ]