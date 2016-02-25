help:
	@echo ''
	@echo 'Minecuna Map Builder Help:'
	@echo '   make generate                    generate the map'
	@echo '   make run                         does a full run of sync and generate'
	@echo '   make setup                       set up local env'
	@echo ''

generate:
	python overviewer/overviewer.py --config=config
	python overviewer/overviewer.py --config=config --genpoi

setup:
	git submodule update --init
	pip install -r requirements.txt
	bin/build-overviewer

.PHONY: generate run setup
