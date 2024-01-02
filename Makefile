all: 
	docker buildx build -t probely/drone-io --platform linux/amd64,linux/arm64 --push .

