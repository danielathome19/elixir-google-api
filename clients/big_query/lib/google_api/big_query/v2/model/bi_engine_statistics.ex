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

defmodule GoogleApi.BigQuery.V2.Model.BiEngineStatistics do
  @moduledoc """
  Statistics for a BI Engine specific query. Populated as part of JobStatistics2

  ## Attributes

  *   `accelerationMode` (*type:* `String.t`, *default:* `nil`) - Output only. Specifies which mode of BI Engine acceleration was performed (if any).
  *   `biEngineMode` (*type:* `String.t`, *default:* `nil`) - Output only. Specifies which mode of BI Engine acceleration was performed (if any).
  *   `biEngineReasons` (*type:* `list(GoogleApi.BigQuery.V2.Model.BiEngineReason.t)`, *default:* `nil`) - In case of DISABLED or PARTIAL bi_engine_mode, these contain the explanatory reasons as to why BI Engine could not accelerate. In case the full query was accelerated, this field is not populated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accelerationMode => String.t() | nil,
          :biEngineMode => String.t() | nil,
          :biEngineReasons => list(GoogleApi.BigQuery.V2.Model.BiEngineReason.t()) | nil
        }

  field(:accelerationMode)
  field(:biEngineMode)
  field(:biEngineReasons, as: GoogleApi.BigQuery.V2.Model.BiEngineReason, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.BiEngineStatistics do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.BiEngineStatistics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.BiEngineStatistics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
