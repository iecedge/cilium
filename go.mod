module github.com/cilium/cilium

go 1.13

// direct dependencies
require (
	github.com/asaskevich/govalidator v0.0.0-20190424111038-f61b66f89f4a
	github.com/aws/aws-sdk-go-v2 v0.18.0
	github.com/blang/semver v3.5.0+incompatible
	github.com/c9s/goprocinfo v0.0.0-20190309065803-0b2ad9ac246b
	github.com/census-instrumentation/opencensus-proto v0.2.1 // indirect
	github.com/cilium/arping v1.0.1-0.20190728065459-c5eaf8d7a710
	github.com/cilium/ebpf v0.0.0-20191113100448-d9fb101ca1fb
	github.com/cilium/ipam v0.0.0-20200217195329-a46f8d55f9db
	github.com/cilium/proxy v0.0.0-20191113190709-4c7b379792e6
	github.com/containernetworking/cni v0.7.1
	github.com/containernetworking/plugins v0.8.2
	github.com/davecgh/go-spew v1.1.1
	github.com/docker/distribution v2.7.1+incompatible // indirect
	github.com/docker/docker v0.7.3-0.20190327010347-be7ac8be2ae0
	github.com/docker/go-connections v0.3.0 // indirect
	github.com/docker/libnetwork v0.0.0-20190128195551-d8d4c8cf03d7
	github.com/envoyproxy/protoc-gen-validate v0.1.0 // indirect
	github.com/fatih/color v1.7.0
	github.com/go-openapi/errors v0.19.2
	github.com/go-openapi/loads v0.19.4
	github.com/go-openapi/runtime v0.19.4
	github.com/go-openapi/spec v0.19.3
	github.com/go-openapi/strfmt v0.19.3
	github.com/go-openapi/swag v0.19.5
	github.com/go-openapi/validate v0.19.5
	github.com/golang/protobuf v1.3.2
	github.com/golang/snappy v0.0.1 // indirect
	github.com/google/go-cmp v0.3.1
	github.com/google/gopacket v1.1.17
	github.com/google/gops v0.3.6
	github.com/gorilla/mux v1.7.0
	github.com/hashicorp/consul/api v1.2.0
	github.com/hashicorp/go-immutable-radix v1.1.0
	github.com/ishidawataru/sctp v0.0.0-20180213033435-07191f837fed // indirect
	github.com/jessevdk/go-flags v1.4.0
	github.com/kevinburke/ssh_config v0.0.0-20190725054713-01f96b0aa0cd
	github.com/kr/pretty v0.1.0
	github.com/mattn/go-shellwords v1.0.5
	github.com/miekg/dns v1.0.14
	github.com/morikuni/aec v0.0.0-20170113033406-39771216ff4c // indirect
	github.com/onsi/ginkgo v1.10.1
	github.com/onsi/gomega v1.7.0
	github.com/opencontainers/go-digest v1.0.0-rc1 // indirect
	github.com/opencontainers/image-spec v1.0.1 // indirect
	github.com/optiopay/kafka v0.0.0-00010101000000-000000000000
	github.com/pborman/uuid v1.2.0
	github.com/petermattis/goid v0.0.0-20180202154549-b0b1615b78e5 // indirect
	github.com/pkg/errors v0.8.1
	github.com/pmezard/go-difflib v1.0.0
	github.com/prometheus/client_golang v1.2.0
	github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4
	github.com/russross/blackfriday v1.5.2
	github.com/sasha-s/go-deadlock v0.2.0
	github.com/servak/go-fastping v0.0.0-20160802140958-5718d12e20a0
	github.com/shirou/gopsutil v0.0.0-20180427012116-c95755e4bcd7
	github.com/sirupsen/logrus v1.4.2
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.6.1
	github.com/vishvananda/netlink v1.1.1-0.20200210222539-bfba8e4149db
	go.etcd.io/etcd v0.5.0-alpha.5.0.20190911215424-9ed5f76dc03b
	golang.org/x/crypto v0.0.0-20190820162420-60c769a6c586
	golang.org/x/net v0.0.0-20191004110552-13f9640d40b9
	golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e
	golang.org/x/sys v0.0.0-20200202164722-d101bd2416d5
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4
	google.golang.org/genproto v0.0.0-20190502173448-54afdca5d873
	google.golang.org/grpc v1.23.1
	gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127
	gopkg.in/fsnotify.v1 v1.4.7
	gopkg.in/natefinch/lumberjack.v2 v2.0.0
	gopkg.in/yaml.v2 v2.2.8
	k8s.io/api v0.17.3
	k8s.io/apiextensions-apiserver v0.17.3
	k8s.io/apimachinery v0.17.3
	k8s.io/client-go v0.17.3
	k8s.io/code-generator v0.17.3
	k8s.io/klog v1.0.0
	sigs.k8s.io/yaml v1.1.0
)

replace (
	github.com/miekg/dns => github.com/cilium/dns v1.1.4-0.20190417235132-8e25ec9a0ff3
	github.com/optiopay/kafka => github.com/cilium/kafka v0.0.0-20180809090225-01ce283b732b
	k8s.io/client-go => github.com/cilium/client-go v0.0.0-20200217141255-96fd08586691
)
