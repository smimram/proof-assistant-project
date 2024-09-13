all test:
	$(MAKE) -C simple $@
	$(MAKE) -C dependent $@
