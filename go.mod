module github.com/fluxcd/helm-operator

go 1.13

// TODO(carnott-snap): this replace is a noop, but required till fluxcd/flux#2590 is released
replace github.com/docker/distribution => github.com/docker/distribution v2.7.1+incompatible

// TODO(carnot-snap): force downgrade because of a trasitive upgrade
//
// github.com/fluxcd/helm-operator
// +-> github.com/fluxcd/flux@v1.15.0
//     +-> github.com/fluxcd/helm-operator@v1.0.0-rc1
//         +-> github.com/weaveworks/flux@v0.0.0-20190729133003-c78ccd3706b5
//             +-> k8s.io/code-generator@v0.0.0-20190511023357-639c964206c2
//
// This replace should be removed once fluxcd/flux is released.
replace k8s.io/code-generator => k8s.io/code-generator v0.0.0-20190311093542-50b561225d70

require (
	// TODO(carnott-snap): this must be replaced with a version that breaks the dependency cycle
	// github.com/fluxcd/flux v1.15.0
	github.com/ghodss/yaml v1.0.0
	github.com/go-kit/kit v0.9.0
	github.com/golang/protobuf v1.3.2
	github.com/google/go-cmp v0.3.1
	github.com/gorilla/mux v1.7.3
	github.com/instrumenta/kubeval v0.0.0-20190918223246-8d013ec9fc56
	github.com/ncabatoff/go-seq v0.0.0-20180805175032-b08ef85ed833
	github.com/prometheus/client_golang v1.2.1
	github.com/shurcooL/httpfs v0.0.0-20190707220628-8d4bc4ba7749
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.4.0

	// pinned to kubernetes-1.14.4
	k8s.io/api v0.0.0-20190708174958-539a33f6e817
	k8s.io/apimachinery v0.0.0-20190404173353-6a84e37a896d
	k8s.io/client-go v11.0.1-0.20190708175433-62e1c231c5dc+incompatible
	k8s.io/code-generator v0.0.0-20190311093542-50b561225d70 // untidy
	k8s.io/gengo v0.0.0-20191010091904-7fa3014cb28f // indirect
	k8s.io/helm v2.16.0+incompatible
	k8s.io/klog v1.0.0
)
