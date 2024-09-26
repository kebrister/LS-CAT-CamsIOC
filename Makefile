# The symlink refers to the original name of this repo, rename for brevity and
# consistency with other LS-CAT software projects.
install:
	install -p startCamsIOC /usr/local/bin
	install -p medmCams     /usr/local/bin
	install -t /usr/local/epics .
	ln -sf /usr/local/epics/cams-ioc /usr/local/epics/LS-CAT-CamsIOC
