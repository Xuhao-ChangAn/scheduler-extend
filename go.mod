module scheduler-extend

go 1.15

require (
	k8s.io/api v0.18.4
	k8s.io/apimachinery v0.18.4
	k8s.io/component-base v0.18.4
	k8s.io/klog v1.0.0
	k8s.io/kubernetes v1.18.4
	k8s.io/repo-infra v0.0.1-alpha.1 // indirect
)

replace (
	k8s.io/api => /Users/lixuhao/go/pkg/mod/k8s.io/api@v0.0.0
	k8s.io/apiextensions-apiserver => /Users/lixuhao/go/pkg/mod/k8s.io/apiextensions-apiserver@0.0.0
	k8s.io/apimachinery => /Users/lixuhao/go/pkg/mod/k8s.io/apimachinery@v0.18.4
	k8s.io/apiserver => /Users/lixuhao/go/pkg/mod/k8s.io/apiserver@v0.18.4
	k8s.io/cli-runtime => /Users/lixuhao/go/pkg/mod/k8s.io/cli-runtime@0.18.4
	k8s.io/client-go => /Users/lixuhao/go/pkg/mod/k8s.io/client-go@v0.18.4
	k8s.io/cloud-provider => /Users/lixuhao/go/pkg/mod/k8s.io/cloud-provider@0.18.4
	k8s.io/cluster-bootstrap => /Users/lixuhao/go/pkg/mod/k8s.io/cluster-bootstrap@0.18.4
	k8s.io/code-generator => /Users/lixuhao/go/pkg/mod/k8s.io/code-generator@0.18.4
	k8s.io/component-base => /Users/lixuhao/go/pkg/mod/k8s.io/component-base@v0.18.4
	k8s.io/cri-api => /Users/lixuhao/go/pkg/mod/k8s.io/cri-api@0.18.4
	k8s.io/csi-translation-lib => /Users/lixuhao/go/pkg/mod/k8s.io/csi-translation-lib@0.18.4
	k8s.io/kube-aggregator => /Users/lixuhao/go/pkg/mod/k8s.io/kube-aggregator@0.18.4
	k8s.io/kube-controller-manager => /Users/lixuhao/go/pkg/mod/k8s.io/kube-controller-manager@0.18.4
	k8s.io/kube-proxy => /Users/lixuhao/go/pkg/mod/k8s.io/kube-proxy@0.18.4
	k8s.io/kube-scheduler => /Users/lixuhao/go/pkg/mod/k8s.io/kube-scheduler@v0.18.4
	k8s.io/kubectl => /Users/lixuhao/go/pkg/mod/k8s.io/kubectl@0.18.4
	k8s.io/kubelet => /Users/lixuhao/go/pkg/mod/k8s.io/kubelet@0.18.4
	k8s.io/legacy-cloud-providers => /Users/lixuhao/go/pkg/mod/k8s.io/legacy-cloud-providers@0.18.4
	k8s.io/metrics => /Users/lixuhao/go/pkg/mod/k8s.io/metrics@0.18.4
	k8s.io/sample-apiserver => /Users/lixuhao/go/pkg/mod/k8s.io/sample-apiserver@0.18.4
)
