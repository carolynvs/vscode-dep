vsce:
	docker build -t carolynvs/vsce vsce

package:
	docker run --rm -it -v `pwd`:/app carolynvs/vsce package

publish:
	docker run --rm -it -v `pwd`:/app carolynvs/vsce publish

.PHONY: vsce package publish
