.PHONY: analyze test

analyze:
	flutter analyze

test:
	if [ -d test ]; then flutter test; fi

