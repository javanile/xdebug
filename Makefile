
build:
	chmod +x xdebug-entrypoint.sh
	docker-compose build

up: build
	docker-compose up -d --force-recreate

push: build
	git add .
	git commit -am "push to docker hub"
	git push
	docker push javanile/xdebug
