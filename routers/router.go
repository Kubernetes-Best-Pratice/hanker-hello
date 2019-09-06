package routers

import (
	"hanker-hello/controllers"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
)

func init() {
	beego.Router("/", &controllers.MainController{})

	beego.Get("/health", func(ctx *context.Context) {
		ctx.Output.Body([]byte("Ok"))
	})
}
