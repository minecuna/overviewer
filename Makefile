help:
	@echo ''
	@echo 'Minecuna Map Builder Help:'
	@echo '   make generate                    generate the map'
	@echo '   make setup                       set up local env'
	@echo ''

generate:
	./overviewer.py --config=config
	./overviewer.py --config=config --genpoi

setup:
	git submodule update --init
	pip install numpy
	bin/build-overviewer

.PHONY: generate setup
