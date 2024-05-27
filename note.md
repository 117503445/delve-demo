docker build -t delve-demo .
docker run -p 2345:2345 -p 3000:3000 --rm --name delve-demo delve-demo

docker build -t delve-demo2 -f Dockerfile2 .
docker run -p 5432:5432 -p 3001:3000 --rm --name delve-demo2 delve-demo2

https://github.com/golang/vscode-go/blob/master/docs/debugging.md


```yaml
# ~/.config/dlv/config.yml
substitute-path:
  - {from: /workspace2, to: /workspace}
```