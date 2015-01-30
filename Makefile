build/container:
	docker build --no-cache -t node-alpine .

release:
	docker tag node-alpine mattaitchison/node-alpine
	docker push mattaitchison/node-alpine

.PHONY:
	build/container release
