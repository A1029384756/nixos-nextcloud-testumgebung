build:
	git submodule update --remote --init
	# Build server
	cd server && git submodule update --init
	cd server && make dev-setup
	cd server && make build-js
	cd server && npm run sass
	# config ⇒ /var/lib/nextcloud/config # FIXME
	cd calendar && make dev-setup
	cd calendar && make build-js

clean:
	rm nixos.qcow2