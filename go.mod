module github.com/fluxcd/helm-operator

go 1.13

// TODO(carnott-snap): this replace is required because I cannot push to fluxcd org
replace github.com/fluxcd/flux => github.com/carnott-snap/flux v1.15.1-0.20191108021221-65da8ef3744e

// TODO(carnott-snap): this replace is required because I cannot push to fluxcd org
replace github.com/fluxcd/helm-operator => github.com/carnott-snap/helm-operator v1.0.0-rc3.0.20191108020535-100d4a6e2252

require (
	github.com/Masterminds/goutils v1.1.0 // indirect
	github.com/Masterminds/sprig v2.22.0+incompatible // indirect
	github.com/fluxcd/flux v1.15.1-0.20191108021221-65da8ef3744e
	github.com/ghodss/yaml v1.0.0
	github.com/go-kit/kit v0.9.0
	github.com/golang/protobuf v1.3.2
	github.com/google/go-cmp v0.3.1
	github.com/google/uuid v1.1.1 // indirect
	github.com/gorilla/mux v1.7.3
	github.com/huandu/xstrings v1.2.0 // indirect
	github.com/instrumenta/kubeval v0.0.0-20190918223246-8d013ec9fc56
	github.com/mitchellh/copystructure v1.0.0 // indirect
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
