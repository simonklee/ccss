BOOTSTRAP = ./bootstrap.css
BOOTSTRAP_MIN = ./bootstrap.min.css
BOOTSTRAP_LESS = ./lib/bootstrap.less
LESS_COMPESSOR ?= `which lessc`

build:
	@@if test ! -z ${LESS_COMPESSOR}; then \
		lessc ${BOOTSTRAP_LESS} > ${BOOTSTRAP}; \
		lessc ${BOOTSTRAP_LESS} > ${BOOTSTRAP_MIN} --compress; \
		echo "ccss successfully built! - `date`"; \
	else \
		echo "You must have the LESS compiler installed in order to build ccss."; \
		echo "You can install it by running: npm install less -g"; \
	fi

.PHONY: build 
