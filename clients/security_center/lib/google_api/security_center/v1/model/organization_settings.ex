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

defmodule GoogleApi.SecurityCenter.V1.Model.OrganizationSettings do
  @moduledoc """
  User specified settings that are attached to the Security Command Center organization.

  ## Attributes

  *   `assetDiscoveryConfig` (*type:* `GoogleApi.SecurityCenter.V1.Model.AssetDiscoveryConfig.t`, *default:* `nil`) - The configuration used for Asset Discovery runs.
  *   `enableAssetDiscovery` (*type:* `boolean()`, *default:* `nil`) - A flag that indicates if Asset Discovery should be enabled. If the flag is set to `true`, then discovery of assets will occur. If it is set to `false`, all historical assets will remain, but discovery of future assets will not occur.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The relative resource name of the settings. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/organizationSettings".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetDiscoveryConfig =>
            GoogleApi.SecurityCenter.V1.Model.AssetDiscoveryConfig.t() | nil,
          :enableAssetDiscovery => boolean() | nil,
          :name => String.t() | nil
        }

  field(:assetDiscoveryConfig, as: GoogleApi.SecurityCenter.V1.Model.AssetDiscoveryConfig)
  field(:enableAssetDiscovery)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.OrganizationSettings do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.OrganizationSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.OrganizationSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
