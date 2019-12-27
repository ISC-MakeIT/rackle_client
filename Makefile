.PHONY:	run install analyze test

run:
	flutter run

install:
	flutter install

analyze:
	flutter analyze

test:
	if [ -d test ]; then flutter test; fi

