// By moving the application's package main logic into
// a package other than main, it becomes much easier to
// wrap caddy for custom builds that are go-gettable.
// https://forum.caddyserver.com/t/my-wish-for-0-9-go-gettable-custom-builds/59?u=matt

package main

import (
	_ "github.com/BTBurke/caddy-jwt"
	_ "github.com/brimstone/caddy-consul"
	_ "github.com/hacdias/caddy-hugo"
	"github.com/mholt/caddy/caddy/caddymain"
)

var run = caddymain.Run // replaced for tests

func main() {
	run()
}
