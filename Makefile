PREFIX?=$(shell dirname $(shell dirname $(shell  which gnatstudio)))
TEMPLATES=${PREFIX}/share/gnatstudio/templates

local-install:
	if [ -e $(HOME)/.gnatstudio/templates/ ]; then\
		cd $(HOME)/.gnatstudio/templates/; ln -sf ${CURDIR}/c-binding;\
	fi

install:
	@if [ -e $(HOME)/.gnatstudio/templates/ ]; then\
		rm -f $(HOME)/.gnatstudio/templates/c-binding;\
	fi
	tar -c c-binding | tar -C ${TEMPLATES} -x

uninstall:
	rm -rf ${TEMPLATES}/c-binding
	rm -f $(HOME)/.gnatstudio/templates/c-binding
	
