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

defmodule GoogleApi.Compute.V1.Model.SchedulingNodeAffinity do
  @moduledoc """
  Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled.

  ## Attributes

  *   `key` (*type:* `String.t`, *default:* `nil`) - Corresponds to the label key of Node resource.
  *   `operator` (*type:* `String.t`, *default:* `nil`) - Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
  *   `values` (*type:* `list(String.t)`, *default:* `nil`) - Corresponds to the label values of Node resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => String.t() | nil,
          :operator => String.t() | nil,
          :values => list(String.t()) | nil
        }

  field(:key)
  field(:operator)
  field(:values, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SchedulingNodeAffinity do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SchedulingNodeAffinity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SchedulingNodeAffinity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
