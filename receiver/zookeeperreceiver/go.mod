module github.com/open-telemetry/opentelemetry-collector-contrib/receiver/zookeeperreceiver

go 1.18

require (
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/common v0.58.0
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/containertest v0.58.0
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/scrapertest v0.58.0
	github.com/stretchr/testify v1.8.4
	go.opentelemetry.io/collector v0.58.0
	go.opentelemetry.io/collector/pdata v1.0.0
	go.uber.org/zap v1.22.0

)

require (
	github.com/Azure/go-ansiterm v0.0.0-20210617225240-d185dfc1b5a1 // indirect
	github.com/Microsoft/go-winio v0.5.1 // indirect
	github.com/cenkalti/backoff/v4 v4.1.3 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/docker/distribution v2.8.1+incompatible // indirect
	github.com/docker/docker v20.10.17+incompatible // indirect
	github.com/docker/go-connections v0.4.1-0.20210727194412-58542c764a11 // indirect
	github.com/docker/go-units v0.4.0 // indirect
	github.com/fsnotify/fsnotify v1.5.4 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/knadh/koanf v1.4.2 // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/image-spec v1.0.2 // indirect
	github.com/pelletier/go-toml v1.9.4 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/sirupsen/logrus v1.8.1 // indirect
	go.opencensus.io v0.23.0 // indirect
	go.opentelemetry.io/otel v1.9.0 // indirect
	go.opentelemetry.io/otel/metric v0.31.0 // indirect
	go.opentelemetry.io/otel/trace v1.9.0 // indirect
	go.uber.org/atomic v1.10.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	golang.org/x/net v0.18.0 // indirect
	golang.org/x/sys v0.14.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20230822172742-b8732ec3820d // indirect
	google.golang.org/grpc v1.59.0 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/common => ../../internal/common

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/containertest => ../../internal/containertest

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/scrapertest => ../../internal/scrapertest

// see https://github.com/distribution/distribution/issues/3590
exclude github.com/docker/distribution v2.8.0+incompatible
