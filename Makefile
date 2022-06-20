clean:
	rm -f ./package-lock.json
start:
	docker-compose up -d
stop:
	docker-compose down

build:
	docker exec ecf-vue-container npm install
show:
	docker exec ecf-vue-container npm run build && echo "\n Le site tourne ici http://127.0.0.1:9090,  cmd + doucble click sur l'url précédente pour ouvrir le lien sur votre navigateur (MACOS)"

all: clean start build show