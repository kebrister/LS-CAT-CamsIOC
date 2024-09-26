.PHONY: default
default:
	@echo "Nothing to build"

.PHONY: clean
clean:
	@echo "No build artifacts to delete"

# The symlink refers to the original name of this repo, rename for brevity and
# consistency with other LS-CAT software projects.
.PHONY: install
install:
	install -p startCamsIOC /usr/local/bin
	install -p medmCams     /usr/local/bin
	mkdir -m 0755 -p /usr/local/epics/cams-ioc
	cp -Rf . /usr/local/epics/cams-ioc/
	ln -sf /usr/local/epics/cams-ioc /usr/local/epics/LS-CAT-CamsIOC

.PHONY: uninstall
uninstall:
	rm -f /usr/local/bin/startCamsIOC /usr/local/bin/medmCams
	rm -rf /usr/local/epics/cams-ioc
	rm -rf /usr/local/epics/LS-CAT-CamsIOC
