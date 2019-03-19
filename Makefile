build:
	docker build -t wine-x11-novnc-docker .

run: build
	docker run -p 18080:8080 wine-x11-novnc-docker

shell: build
	docker run -ti -p 18080:8080 wine-x11-novnc-docker bash
