module github.com/open-telemetry/opentelemetry-collector-contrib/exporter/splunkhecexporter

go 1.18

require (
	github.com/census-instrumentation/opencensus-proto v0.4.1
	github.com/json-iterator/go v1.1.12
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/coreinternal v0.58.0
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/splunk v0.58.0
	github.com/open-telemetry/opentelemetry-collector-contrib/pkg/batchperresourceattr v0.58.0
	github.com/open-telemetry/opentelemetry-collector-contrib/pkg/translator/opencensus v0.58.0
	github.com/stretchr/testify v1.9.0
	go.opentelemetry.io/collector v0.58.0
	go.opentelemetry.io/collector/pdata v1.13.0
	go.opentelemetry.io/collector/semconv v0.58.0
	go.uber.org/multierr v1.11.0
	go.uber.org/zap v1.22.0
	google.golang.org/protobuf v1.34.2
)

require (
	github.com/benbjohnson/clock v1.3.0 // indirect
	github.com/cenkalti/backoff/v4 v4.1.3 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.11.3 // indirect
	github.com/knadh/koanf v1.4.2 // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	go.opencensus.io v0.23.0 // indirect
	go.opentelemetry.io/otel v1.9.0 // indirect
	go.opentelemetry.io/otel/metric v0.31.0 // indirect
	go.opentelemetry.io/otel/trace v1.9.0 // indirect
	go.uber.org/atomic v1.10.0 // indirect
	golang.org/x/net v0.25.0 // indirect
	golang.org/x/sys v0.20.0 // indirect
	golang.org/x/text v0.15.0 // indirect
	google.golang.org/genproto v0.0.0-20220822174746-9e6da59bd2fc // indirect
	google.golang.org/grpc v1.65.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/splunk => ../../internal/splunk

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/translator/opencensus => ../../pkg/translator/opencensus

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/batchperresourceattr => ../../pkg/batchperresourceattr

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/coreinternal => ../../internal/coreinternal
