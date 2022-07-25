.PHONY: install
install:
	@python -m venv env
	@. env/bin/activate
	@python -m pip install -r requirements.txt


.PHONY: init
init:
	@scripts/init.sh


.PHONY: start
start:
	@scripts/start.sh


.PHONY: stop
stop:
	@scripts/stop.sh


.PHONY: clean
clean:
	@rm -f dsw/docker-compose.yml


.PHONY: wait
wait:
	@while ! curl http://localhost:3000/ 2>/dev/null; \
	do \
		echo "Retrying ..."; \
		sleep 2; \
	done
