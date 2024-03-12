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

defmodule GoogleApi.NetworkServices.V1.Model.ServiceLbPolicy do
  @moduledoc """
  ServiceLbPolicy holds global load balancing and traffic distribution configuration that can be applied to a BackendService.

  ## Attributes

  *   `autoCapacityDrain` (*type:* `GoogleApi.NetworkServices.V1.Model.ServiceLbPolicyAutoCapacityDrain.t`, *default:* `nil`) - Optional. Configuration to automatically move traffic away for unhealthy IG/NEG for the associated Backend Service.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this resource was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A free-text description of the resource. Max length 1024 characters.
  *   `failoverConfig` (*type:* `GoogleApi.NetworkServices.V1.Model.ServiceLbPolicyFailoverConfig.t`, *default:* `nil`) - Optional. Configuration related to health based failover.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Set of label tags associated with the ServiceLbPolicy resource.
  *   `loadBalancingAlgorithm` (*type:* `String.t`, *default:* `nil`) - Optional. The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_REGION.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/serviceLbPolicies/{service_lb_policy_name}`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this resource was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoCapacityDrain =>
            GoogleApi.NetworkServices.V1.Model.ServiceLbPolicyAutoCapacityDrain.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :failoverConfig =>
            GoogleApi.NetworkServices.V1.Model.ServiceLbPolicyFailoverConfig.t() | nil,
          :labels => map() | nil,
          :loadBalancingAlgorithm => String.t() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:autoCapacityDrain,
    as: GoogleApi.NetworkServices.V1.Model.ServiceLbPolicyAutoCapacityDrain
  )

  field(:createTime, as: DateTime)
  field(:description)
  field(:failoverConfig, as: GoogleApi.NetworkServices.V1.Model.ServiceLbPolicyFailoverConfig)
  field(:labels, type: :map)
  field(:loadBalancingAlgorithm)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.ServiceLbPolicy do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.ServiceLbPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.ServiceLbPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
