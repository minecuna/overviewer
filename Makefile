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

run:
	bin/notify-slack dev "Map Generation Started"
	bin/sync-world
	make generate
	bin/notify-slack dev "Map Generation Finished"

setup:
	git submodule update --init
	pip install -r requirements.txt
	bin/build-overviewer

.PHONY: generate run setup
