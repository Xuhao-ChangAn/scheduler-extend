package scheduler

import (
	"context"
	"fmt"
	v1 "k8s.io/api/core/v1"
	"k8s.io/apimachinery/pkg/runtime"
	"k8s.io/klog"
	"k8s.io/kubernetes/pkg/scheduler/framework/v1alpha1"
	"k8s.io/kubernetes/pkg/scheduler/nodeinfo"
)

const Name = "sample-plugin"

type Args struct {
	FavoriteColor  string `json:"favorite_color, omitempty"`
	FavoriteNumber int    `json:"favorite_number, omitempty"`
	ThanksTo       string `json:"thanks_to, omitempty"`
}

type Sample struct {
	args *Args
	handle v1alpha1.FrameworkHandle
}

func (s *Sample) Name() string {
	return Name
}

func (s *Sample) PreFilter(ctx context.Context, state *v1alpha1.CycleState, p *v1.Pod) *v1alpha1.Status {
	klog.V(3).Infof("PreFilter pod : %v", p.Name)
	return v1alpha1.NewStatus(v1alpha1.Success, "")
}

func (s *Sample) PreFilterExtensions() v1alpha1.PreFilterExtensions {
	return nil
}

func (s *Sample) Filter(ctx context.Context, state *v1alpha1.CycleState, pod *v1.Pod, nodeInfo *nodeinfo.NodeInfo) *v1alpha1.Status {
	klog.V(3).Infof("filter pod : %v, node %v", pod.Name, nodeInfo.Node().Name)
	return v1alpha1.NewStatus(v1alpha1.Success, "")
}

func (s *Sample) PreBind(ctx context.Context, state *v1alpha1.CycleState, pod *v1.Pod, nodeName string) *v1alpha1.Status {
	if nodeInfo, err := s.handle.SnapshotSharedLister().NodeInfos().Get(nodeName); err != nil {
		return v1alpha1.NewStatus(v1alpha1.Error, fmt.Sprintf("PreBind get node info error: %+v", nodeName))
	} else {
		klog.V(3).Infof("PreBind node info: %+v", nodeInfo.Node())
		return v1alpha1.NewStatus(v1alpha1.Success, "")
	}
}

func New(configuration *runtime.Unknown, f v1alpha1.FrameworkHandle) (v1alpha1.Plugin, error) {
	args := &Args{}
	if err := v1alpha1.DecodeInto(configuration, args); err != nil {
		return nil, err
	}
	klog.V(3).Infof("get plugin config args : %+v", args)
	return &Sample{
		args:   args,
		handle: f,
	}, nil
}