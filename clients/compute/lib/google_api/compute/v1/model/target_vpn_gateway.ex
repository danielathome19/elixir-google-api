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

defmodule GoogleApi.Compute.V1.Model.TargetVpnGateway do
  @moduledoc """
  Represents a Target VPN Gateway resource.

  The target VPN gateway resource represents a Classic Cloud VPN gateway. For more information, read the the Cloud VPN Overview. (== resource_for {$api_version}.targetVpnGateways ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `forwardingRules` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] A list of URLs to the ForwardingRule resources. ForwardingRules are created using compute.forwardingRules.insert and associated with a VPN gateway.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#targetVpnGateway`) - [Output Only] Type of resource. Always compute#targetVpnGateway for target VPN gateways.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `network` (*type:* `String.t`, *default:* `nil`) - URL of the network to which this VPN gateway is attached. Provided by the client when the VPN gateway is created.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the target VPN gateway resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the VPN gateway, which can be one of the following: CREATING, READY, FAILED, or DELETING.
  *   `tunnels` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] A list of URLs to VpnTunnel resources. VpnTunnels are created using the compute.vpntunnels.insert method and associated with a VPN gateway.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :forwardingRules => list(String.t()) | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :region => String.t() | nil,
          :selfLink => String.t() | nil,
          :status => String.t() | nil,
          :tunnels => list(String.t()) | nil
        }

  field(:creationTimestamp)
  field(:description)
  field(:forwardingRules, type: :list)
  field(:id)
  field(:kind)
  field(:name)
  field(:network)
  field(:region)
  field(:selfLink)
  field(:status)
  field(:tunnels, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.TargetVpnGateway do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.TargetVpnGateway.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.TargetVpnGateway do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
