package tqlotel

import (
	"testing"

	//	"github.com/stretchr/testify/assert"
	"go.opentelemetry.io/collector/pdata/ptrace"

	"github.com/open-telemetry/opentelemetry-collector-contrib/pkg/telemetryquerylanguage/tql"
	"github.com/open-telemetry/opentelemetry-collector-contrib/pkg/telemetryquerylanguage/tql/tqltest"
)

func Test_deleteSpanEvents(t *testing.T) {
	span := ptrace.NewSpan()
	span.Events().AppendEmpty().SetName("event")

	target := &tql.StandardGetSetter{
		Getter: func(ctx tql.TransformContext) interface{} {
			return ctx.GetItem().(ptrace.SpanEvent).Name()
		},
	}

	ctx := tqltest.TestTransformContext{
		Item: span,
	}
	exprFunc, _ := DeleteSpanEvents(target, ".*")
	exprFunc(ctx)
}
