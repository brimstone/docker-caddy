BINARY = caddy

GOPATH = ${PWD}

SETUP =

CHECK = fix-filemanager

fix-filemanager:
	go generate -v github.com/hacdias/caddy-filemanager
	gofmt -w -s .

include ${PROJECTBUILDER}/Makefile
