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

defmodule GoogleApi.Compute.V1.Model.RegionInstanceGroupsSetNamedPortsRequest do
  @moduledoc """


  ## Attributes

  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of the named ports information for this instance group. Use this optional property to prevent conflicts when multiple users change the named ports settings concurrently. Obtain the fingerprint with the instanceGroups.get method. Then, include the fingerprint in your request to ensure that you do not overwrite changes that were applied from another concurrent request.
  *   `namedPorts` (*type:* `list(GoogleApi.Compute.V1.Model.NamedPort.t)`, *default:* `nil`) - The list of named ports to set for this instance group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fingerprint => String.t() | nil,
          :namedPorts => list(GoogleApi.Compute.V1.Model.NamedPort.t()) | nil
        }

  field(:fingerprint)
  field(:namedPorts, as: GoogleApi.Compute.V1.Model.NamedPort, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RegionInstanceGroupsSetNamedPortsRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RegionInstanceGroupsSetNamedPortsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RegionInstanceGroupsSetNamedPortsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
