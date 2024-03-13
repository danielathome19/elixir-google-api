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

defmodule GoogleApi.TPU.V2.Model.NetworkConfig do
  @moduledoc """
  Network related configurations.

  ## Attributes

  *   `canIpForward` (*type:* `boolean()`, *default:* `nil`) - Allows the TPU node to send and receive packets with non-matching destination or source IPs. This is required if you plan to use the TPU workers to forward routes.
  *   `enableExternalIps` (*type:* `boolean()`, *default:* `nil`) - Indicates that external IP addresses would be associated with the TPU workers. If set to false, the specified subnetwork or network should have Private Google Access enabled.
  *   `network` (*type:* `String.t`, *default:* `nil`) - The name of the network for the TPU node. It must be a preexisting Google Compute Engine network. If none is provided, "default" will be used.
  *   `queueCount` (*type:* `integer()`, *default:* `nil`) - Optional. Specifies networking queue count for TPU VM instance's network interface.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - The name of the subnetwork for the TPU node. It must be a preexisting Google Compute Engine subnetwork. If none is provided, "default" will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canIpForward => boolean() | nil,
          :enableExternalIps => boolean() | nil,
          :network => String.t() | nil,
          :queueCount => integer() | nil,
          :subnetwork => String.t() | nil
        }

  field(:canIpForward)
  field(:enableExternalIps)
  field(:network)
  field(:queueCount)
  field(:subnetwork)
end

defimpl Poison.Decoder, for: GoogleApi.TPU.V2.Model.NetworkConfig do
  def decode(value, options) do
    GoogleApi.TPU.V2.Model.NetworkConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TPU.V2.Model.NetworkConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
