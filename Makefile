init: #初回構築時に実行
	docker network create next-app
	docker compose run next yarn install
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
delete-network: # ネットワークを削除する
	docker network rm next-app
destroy: # 全てのコンテナとイメージとボリュームを削除する
	docker compose down --rmi all --volumes --remove-orphans
