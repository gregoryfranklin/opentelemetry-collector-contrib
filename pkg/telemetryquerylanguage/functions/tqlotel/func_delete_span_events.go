package tqlotel // import "github.com/open-telemetry/opentelemetry-collector-contrib/pkg/telemetryquerylanguage/functions/tqlotel"

import (
	"fmt"
	"regexp"

	"go.opentelemetry.io/collector/pdata/pcommon"
	"go.opentelemetry.io/collector/pdata/ptrace"

	"github.com/open-telemetry/opentelemetry-collector-contrib/pkg/telemetryquerylanguage/contexts/tqltraces"
	"github.com/open-telemetry/opentelemetry-collector-contrib/pkg/telemetryquerylanguage/tql"
)

func DeleteSpanEvents(target tql.Getter, pattern string) (tql.ExprFunc, error) {
	compiledPattern, err := regexp.Compile(pattern)
	if err != nil {
		return nil, fmt.Errorf("the regex pattern supplied to delete_span_events is not a valid pattern: %w", err)
	}
	return func(ctx tql.TransformContext) interface{} {
		es := ctx.GetItem().(ptrace.Span).Events()
		es.RemoveIf(func(e ptrace.SpanEvent) bool {

			evctx := tqltraces.SpanEventTransformContext{
				SpanEvent: e,
			}
			val := target.Get(evctx)
			if val == nil {
				return false
			}
			if attr, ok := val.(string); ok {
				return compiledPattern.MatchString(attr)
			}
			if attrs, ok := val.(pcommon.Map); ok {
				attrs.RemoveIf(func(key string, _ pcommon.Value) bool {
					return compiledPattern.MatchString(key)
				})
			}
			return false
		})
		return nil
	}, nil
}
