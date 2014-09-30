help:
	@echo '   make clean                       remove existing world backup'
	@echo '   make move                        backup existing world and copy latest save '
	@echo '   make generate                    generate the map'
	@echo '   make upload                      upload to S3'
	@echo '   make update                      all of the above'

clean:
	rm -rf world.old

move:
	mv world{,.old}
	mv ./saves/Minecuna world

generate:
	./overviewer.py --config=config
	./overviewer.py --config=config --genpoi

upload:
	s3cmd --config=s3cfg sync --no-progress --delete-removed ./output/* s3://map.minecuna.co.uk

update: clean move generate upload
