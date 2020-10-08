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
	k8s.io/api => E:\GoProject\pkg\mod\k8s.io\api@v0.0.0
	k8s.io/apiextensions-apiserver => E:\GoProject\pkg\mod\k8s.io\apiextensions-apiserver@0.0.0
	k8s.io/apimachinery => E:\GoProject\pkg\mod\k8s.io\apimachinery@v0.18.4
	k8s.io/apiserver => E:\GoProject\pkg\mod\k8s.io\apiserver@v0.18.4
	k8s.io/cli-runtime => E:\GoProject\pkg\mod\k8s.io\cli-runtime@0.18.4
	k8s.io/client-go => E:\GoProject\pkg\mod\k8s.io\client-go@v0.18.4
	k8s.io/cloud-provider => E:\GoProject\pkg\mod\k8s.io\cloud-provider@0.18.4
	k8s.io/cluster-bootstrap => E:\GoProject\pkg\mod\k8s.io\cluster-bootstrap@0.18.4
	k8s.io/code-generator => E:\GoProject\pkg\mod\k8s.io\code-generator@0.18.4
	k8s.io/component-base => E:\GoProject\pkg\mod\k8s.io\component-base@v0.18.4
	k8s.io/cri-api => E:\GoProject\pkg\mod\k8s.io\cri-api@0.18.4
	k8s.io/csi-translation-lib => E:\GoProject\pkg\mod\k8s.io\csi-translation-lib@0.18.4
	k8s.io/kube-aggregator => E:\GoProject\pkg\mod\k8s.io\kube-aggregator@0.18.4
	k8s.io/kube-controller-manager => E:\GoProject\pkg\mod\k8s.io\kube-controller-manager@0.18.4
	k8s.io/kube-proxy => E:\GoProject\pkg\mod\k8s.io\kube-proxy@0.18.4
	k8s.io/kube-scheduler => E:\GoProject\pkg\mod\k8s.io\kube-scheduler@v0.18.4
	k8s.io/kubectl => E:\GoProject\pkg\mod\k8s.io\kubectl@0.18.4
	k8s.io/kubelet => E:\GoProject\pkg\mod\k8s.io\kubelet@0.18.4
	k8s.io/legacy-cloud-providers => E:\GoProject\pkg\mod\k8s.io\legacy-cloud-providers@0.18.4
	k8s.io/metrics => E:\GoProject\pkg\mod\k8s.io\metrics@0.18.4
	k8s.io/sample-apiserver => E:\GoProject\pkg\mod\k8s.io\sample-apiserver@0.18.4
)
