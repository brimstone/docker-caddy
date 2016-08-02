BINARY = caddy

GOPATH = ${PWD}

SETUP =

CHECK = fix-filemanager

BINARIES = hugo

fix-filemanager:
	go generate -v github.com/hacdias/caddy-filemanager
	gofmt -w -s .

hugo:
	tar c src | docker run --rm -i \
		-e TAR=1 \
		-e LDFLAGS="-X main.COMMITHASH=${COMMITHASH} -X main.BUILDDATETIME=${BUILDDATETIME}" \
		brimstone/golang-musl \
		github.com/spf13/hugo \
		| tar x "./hugo"


include ${PROJECTBUILDER}/Makefile
