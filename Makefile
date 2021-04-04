docker:
	@docker-compose build
	@docker-compose up -d

start:
	@docker-compose start

restart:
	@docker-compose restart

stop:
	@docker-compose stop

clean:
	@docker-compose down
	@docker system prune --volumes --force
	@rm -rf tmp/* || sudo rm -rf tmp/*

bash:
	@docker-compose exec fbase_auth bash

logs:
	@docker-compose logs -f --tail=0 app