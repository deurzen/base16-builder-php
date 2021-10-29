all:
	composer install
	php builder.php update && php builder.php

.PHONY: clean
clean:
	-rm -rf ./vendor
	-rm -rf ./sources
	-rm -rf ./templates
	-rm -rf ./schemes

