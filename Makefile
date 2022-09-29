COMPOSE = docker compose
RUN = $(COMPOSE) exec server

start:
	$(COMPOSE) up -d

stop:
	$(COMPOSE) down

start-dev:
	$(MAKE) start && $(MAKE) logs server

terminal:
	$(RUN) bash

logs:
	$(COMPOSE) logs -f $(MAKECMDGOALS)
