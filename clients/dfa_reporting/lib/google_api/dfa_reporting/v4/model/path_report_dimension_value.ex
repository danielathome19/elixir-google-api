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

defmodule GoogleApi.DFAReporting.V4.Model.PathReportDimensionValue do
  @moduledoc """
  Represents a PathReportDimensionValue resource.

  ## Attributes

  *   `dimensionName` (*type:* `String.t`, *default:* `nil`) - The name of the dimension.
  *   `ids` (*type:* `list(String.t)`, *default:* `nil`) - The possible ID's associated with the value if available.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of resource this is, in this case dfareporting#pathReportDimensionValue.
  *   `matchType` (*type:* `String.t`, *default:* `nil`) - Determines how the 'value' field is matched when filtering. If not specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, '*' is allowed as a placeholder for variable length character sequences, and it can be escaped with a backslash. Note, only paid search dimensions ('dfa:paidSearch*') allow a matchType other than EXACT.
  *   `values` (*type:* `list(String.t)`, *default:* `nil`) - The possible values of the dimension.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionName => String.t() | nil,
          :ids => list(String.t()) | nil,
          :kind => String.t() | nil,
          :matchType => String.t() | nil,
          :values => list(String.t()) | nil
        }

  field(:dimensionName)
  field(:ids, type: :list)
  field(:kind)
  field(:matchType)
  field(:values, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.PathReportDimensionValue do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.PathReportDimensionValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.PathReportDimensionValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
