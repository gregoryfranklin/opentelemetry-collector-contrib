module github.com/open-telemetry/opentelemetry-collector-contrib/receiver/vcenterreceiver

go 1.18

require (
	github.com/vmware/govmomi v0.29.0
	go.opentelemetry.io/collector v0.58.0
	go.opentelemetry.io/collector/pdata v1.7.0
	go.uber.org/multierr v1.11.0
	go.uber.org/zap v1.22.0
)

require (
	github.com/fsnotify/fsnotify v1.5.1 // indirect
	github.com/pelletier/go-toml v1.9.4 // indirect
	github.com/stretchr/testify v1.9.0
)

require (
	github.com/basgys/goxml2json v1.1.0
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/scrapertest v0.58.0
	golang.org/x/sys v0.18.0 // indirect
)

require (
	github.com/bitly/go-simplejson v0.5.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/knadh/koanf v1.4.2 // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	go.opencensus.io v0.23.0 // indirect
	go.opentelemetry.io/otel v1.9.0 // indirect
	go.opentelemetry.io/otel/metric v0.31.0 // indirect
	go.opentelemetry.io/otel/trace v1.9.0 // indirect
	go.uber.org/atomic v1.10.0 // indirect
	golang.org/x/net v0.23.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20240227224415-6ceb2ff114de // indirect
	google.golang.org/grpc v1.63.2 // indirect
	google.golang.org/protobuf v1.34.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/scrapertest => ../../internal/scrapertest
