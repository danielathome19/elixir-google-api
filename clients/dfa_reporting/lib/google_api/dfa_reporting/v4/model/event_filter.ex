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

defmodule GoogleApi.DFAReporting.V4.Model.EventFilter do
  @moduledoc """
  Represents a DfaReporting event filter.

  ## Attributes

  *   `dimensionFilter` (*type:* `GoogleApi.DFAReporting.V4.Model.PathReportDimensionValue.t`, *default:* `nil`) - The dimension filter contained within this EventFilter.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of resource this is, in this case dfareporting#eventFilter.
  *   `uvarFilter` (*type:* `GoogleApi.DFAReporting.V4.Model.UvarFilter.t`, *default:* `nil`) - Filter on a custom variable.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionFilter => GoogleApi.DFAReporting.V4.Model.PathReportDimensionValue.t() | nil,
          :kind => String.t() | nil,
          :uvarFilter => GoogleApi.DFAReporting.V4.Model.UvarFilter.t() | nil
        }

  field(:dimensionFilter, as: GoogleApi.DFAReporting.V4.Model.PathReportDimensionValue)
  field(:kind)
  field(:uvarFilter, as: GoogleApi.DFAReporting.V4.Model.UvarFilter)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.EventFilter do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.EventFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.EventFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
