.NOTPARALLEL:

include ${BASE}/.config

PKG := pycrypto
VERSION := 2.6.1
DIR := ${PKG}-${VERSION}

.PHONY: all
all: install

.PHONY: install
install: ${DIR}
	@cd ${DIR} && python setup.py install --root=${ROOT} --prefix=/usr --install-lib=/usr/lib/python2.7/dist-packages

${DIR}:
	@tar -zxf ${PACKAGES}/${PKG}-${VERSION}.tar.gz