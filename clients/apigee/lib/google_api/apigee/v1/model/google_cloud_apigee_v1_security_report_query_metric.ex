# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityReportQueryMetric do
  @moduledoc """
  Metric of the Query

  ## Attributes

  *   `aggregationFunction` (*type:* `String.t`, *default:* `nil`) - Aggregation function: avg, min, max, or sum.
  *   `alias` (*type:* `String.t`, *default:* `nil`) - Alias for the metric. Alias will be used to replace metric name in query results.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Metric name.
  *   `operator` (*type:* `String.t`, *default:* `nil`) - One of `+`, `-`, `/`, `%`, `*`.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Operand value should be provided when operator is set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregationFunction => String.t() | nil,
          :alias => String.t() | nil,
          :name => String.t() | nil,
          :operator => String.t() | nil,
          :value => String.t() | nil
        }

  field(:aggregationFunction)
  field(:alias)
  field(:name)
  field(:operator)
  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityReportQueryMetric do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityReportQueryMetric.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityReportQueryMetric do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
