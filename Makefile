run:
	docker-compose up

build:
	docker-compose build

db-migrate:
	docker-compose run web rake db:migrate

db-create:
	docker-compose run web rake db:create

db-delete:
	docker-compose run web rake db:delete

convert-generated-files:
	sudo chown -R $$USER:$$USER .

drop-environment:
	docker-compose down --remove-orphans -v