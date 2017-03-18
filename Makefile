#
# Makefile
# Created Mon Jun  9 13:56:42 AKDT 2008
# by Raymond E. Marcil
#
# Install vmware docs to location web directory.
#
#

# Target web directory
TARGET=/usr/local/htdocs

# VMware install directory
VMWARE=${TARGET}/vmware

# PDF directory to copy.
PDF=pdf

# VCP cert study directory
VCP=vcp

# Binaries
CP=/bin/cp
MKDIR=/bin/mkdir

all:
	@echo "Targets:   install - Install docs to ${VMWARE}"

# Create vmware/ directory.
${VMWARE}:
	${MKDIR} ${VMWARE}

# Install vmware/ directory files.
install: ${VMWARE} index.html
	@if [ ! -d ${TARGET} ]; then ${MKDIR} ${TARGET}/vmware; fi
	${CP} index.html ${VMWARE}
	${CP} -Rfv ${PDF} ${VMWARE}
	${CP} -Rfv ${VCP} ${VMWARE}
