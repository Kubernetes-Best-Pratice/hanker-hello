包管理使用go module
初始化go module环境

```sh
export GOPROXY=https://goproxy.io
go mod init deckjob
```

下载依赖包,
go get、 go run、go build 也会自动下载依赖

```sh
go mod download
```

移除不用的模块

```sh
go mod tidy
```

将依赖包下载到vendor目录

```sh
go mod vendor
```

