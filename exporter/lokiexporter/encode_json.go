// Copyright The OpenTelemetry Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package lokiexporter // import "github.com/open-telemetry/opentelemetry-collector-contrib/exporter/lokiexporter"

import (
	"encoding/json"
	"fmt"

	"go.opentelemetry.io/collector/model/pdata"
)

// JSON representation of the LogRecord as described by https://developers.google.com/protocol-buffers/docs/proto3#json

type lokiEntry struct {
	Name       string                 `json:"name,omitempty"`
	Body       json.RawMessage        `json:"body,omitempty"`
	TraceID    string                 `json:"traceid,omitempty"`
	SpanID     string                 `json:"spanid,omitempty"`
	Severity   string                 `json:"severity,omitempty"`
	Attributes map[string]interface{} `json:"attributes,omitempty"`
}

func serializeBody(body pdata.AttributeValue) ([]byte, error) {
	data := []byte{}
	var err error
	if body.Type() == pdata.AttributeValueTypeString {
		data, err = json.Marshal(body.StringVal())
	} else if body.Type() == pdata.AttributeValueTypeMap {
		data, err = json.Marshal(body.MapVal().AsRaw())
	} else {
		err = fmt.Errorf("unsuported body type %s to serialize", body.Type().String())
	}
	return data, err
}

func encodeJSON(lr pdata.LogRecord, res pdata.Resource) (string, error) {
	var logRecord lokiEntry
	var jsonRecord []byte
	var err error
	var body []byte

	body, err = serializeBody(lr.Body())
	if err != nil {
		return "", err
	}
	logRecord = lokiEntry{
		Name:       lr.Name(),
		Body:       body,
		TraceID:    lr.TraceID().HexString(),
		SpanID:     lr.SpanID().HexString(),
		Severity:   lr.SeverityText(),
		Attributes: lr.Attributes().AsRaw(),
	}
	lr.Body().Type()

	jsonRecord, err = json.Marshal(logRecord)
	if err != nil {
		return "", err
	}
	return string(jsonRecord), nil
}
