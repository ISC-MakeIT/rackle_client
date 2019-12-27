.PHONY:	install analyze test

install:
	flutter install

analyze:
	flutter analyze

test:
	if [ -d test ]; then flutter test; fi

