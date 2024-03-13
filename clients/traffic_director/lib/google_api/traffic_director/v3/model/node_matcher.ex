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

defmodule GoogleApi.TrafficDirector.V3.Model.NodeMatcher do
  @moduledoc """
  Specifies the way to match a Node. The match follows AND semantics.

  ## Attributes

  *   `nodeId` (*type:* `GoogleApi.TrafficDirector.V3.Model.StringMatcher.t`, *default:* `nil`) - Specifies match criteria on the node id.
  *   `nodeMetadatas` (*type:* `list(GoogleApi.TrafficDirector.V3.Model.StructMatcher.t)`, *default:* `nil`) - Specifies match criteria on the node metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nodeId => GoogleApi.TrafficDirector.V3.Model.StringMatcher.t() | nil,
          :nodeMetadatas => list(GoogleApi.TrafficDirector.V3.Model.StructMatcher.t()) | nil
        }

  field(:nodeId, as: GoogleApi.TrafficDirector.V3.Model.StringMatcher)
  field(:nodeMetadatas, as: GoogleApi.TrafficDirector.V3.Model.StructMatcher, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.TrafficDirector.V3.Model.NodeMatcher do
  def decode(value, options) do
    GoogleApi.TrafficDirector.V3.Model.NodeMatcher.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TrafficDirector.V3.Model.NodeMatcher do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
