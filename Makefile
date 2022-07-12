cp_keys:
	cp keys/private.txt.exemplo keys/private.txt
	cp keys/public.txt.exemplo keys/public.txt

clean_keys:
	rm keys/private.txt
	rm keys/public.txt

cp_files:
	cp assets/input.txt.exemplo assets/input.txt
	cp assets/output.txt.exemplo assets/output.txt

clean_files:
	rm assets/input.txt
	rm assets/output.txt
	
setup:
	make cp_keys
	make cp_files

clean:
	make clean_keys
	make clean_files

up:
	make setup
	docker-compose up -d
	make bash

stop:
	make clean
	docker-compose stop

bash:
	docker exec -it rsa_app_app_1  /bin/bash


