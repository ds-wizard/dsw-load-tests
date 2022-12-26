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

.PHONY: seed
seed:
	@python tools/seeder.py tests/${test}

.PHONY: open
open:
	@locust -f tests/${test}/locustfile.py \
          --host=http://localhost:3000 \
          --users=50 \
          --spawn-rate=10 \
          --run-time=3m
