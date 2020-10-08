package main

import (
	"fmt"
	"k8s.io/component-base/logs"
	"k8s.io/kubernetes/cmd/kube-scheduler/app"
	"math/rand"
	"os"
	"scheduler-extend/scheduler"
	"time"
)

func main() {
	rand.Seed(time.Now().UTC().UnixNano())

	//scheduler返回的是插件的名称，scheduler返回的是一个plugin对象，相当于是一个plugin factory
	//withplugin返回的是一个option对象（一个plugin注册函数），因此直接使用模块入口newschedulercommand进行开始
	command := app.NewSchedulerCommand(app.WithPlugin(scheduler.Name, scheduler.New))

	logs.InitLogs()
	defer logs.FlushLogs()

	if err := command.Execute(); err != nil {
		_, _ = fmt.Fprintf(os.Stderr, "%v\n", err)
		os.Exit(1)
	}
}
