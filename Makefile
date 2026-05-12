.PHONY: serve build

serve:
	hugo server

build:
	hugo --minify
