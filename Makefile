all: build

build:
	docker build -t pxe:latest -f Dockerfile --no-cache=true .
upload:
	docker tag pxe:latest nulldevil/pxe:latest
	docker push nulldevil/pxe:latest
up:
	docker compose up
