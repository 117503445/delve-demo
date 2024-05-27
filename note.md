docker build -t delve-demo .
docker run -p 2345:2345 --rm --name delve-demo delve-demo