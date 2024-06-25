init: #初回構築時に実行
	#docker network create next-app
	docker compose run app yarn install
	@make build
	@make up
build:
	docker compose build
up:
	docker compose up -d
stop: # コンテナを停止する
	docker compose stop
down: # コンテナ停止・削除する
	docker compose down --remove-orphans
down-v: # コンテナを停止し、コンテナとボリュームを削除する
	docker compose down --remove-orphans --volumes
restart:
	@make down
	@make up
destroy: # 全てのコンテナとイメージとボリュームを削除する
	docker compose down --rmi all --volumes --remove-orphans
