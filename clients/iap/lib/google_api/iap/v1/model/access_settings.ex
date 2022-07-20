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

defmodule GoogleApi.IAP.V1.Model.AccessSettings do
  @moduledoc """
  Access related settings for IAP protected apps.

  ## Attributes

  *   `allowedDomainsSettings` (*type:* `GoogleApi.IAP.V1.Model.AllowedDomainsSettings.t`, *default:* `nil`) - Settings to configure and enable allowed domains.
  *   `corsSettings` (*type:* `GoogleApi.IAP.V1.Model.CorsSettings.t`, *default:* `nil`) - Configuration to allow cross-origin requests via IAP.
  *   `gcipSettings` (*type:* `GoogleApi.IAP.V1.Model.GcipSettings.t`, *default:* `nil`) - GCIP claims and endpoint configurations for 3p identity providers.
  *   `oauthSettings` (*type:* `GoogleApi.IAP.V1.Model.OAuthSettings.t`, *default:* `nil`) - Settings to configure IAP's OAuth behavior.
  *   `policyDelegationSettings` (*type:* `GoogleApi.IAP.V1.Model.PolicyDelegationSettings.t`, *default:* `nil`) - Settings to configure Policy delegation for apps hosted in tenant projects. INTERNAL_ONLY.
  *   `reauthSettings` (*type:* `GoogleApi.IAP.V1.Model.ReauthSettings.t`, *default:* `nil`) - Settings to configure reauthentication policies in IAP.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedDomainsSettings => GoogleApi.IAP.V1.Model.AllowedDomainsSettings.t() | nil,
          :corsSettings => GoogleApi.IAP.V1.Model.CorsSettings.t() | nil,
          :gcipSettings => GoogleApi.IAP.V1.Model.GcipSettings.t() | nil,
          :oauthSettings => GoogleApi.IAP.V1.Model.OAuthSettings.t() | nil,
          :policyDelegationSettings => GoogleApi.IAP.V1.Model.PolicyDelegationSettings.t() | nil,
          :reauthSettings => GoogleApi.IAP.V1.Model.ReauthSettings.t() | nil
        }

  field(:allowedDomainsSettings, as: GoogleApi.IAP.V1.Model.AllowedDomainsSettings)
  field(:corsSettings, as: GoogleApi.IAP.V1.Model.CorsSettings)
  field(:gcipSettings, as: GoogleApi.IAP.V1.Model.GcipSettings)
  field(:oauthSettings, as: GoogleApi.IAP.V1.Model.OAuthSettings)
  field(:policyDelegationSettings, as: GoogleApi.IAP.V1.Model.PolicyDelegationSettings)
  field(:reauthSettings, as: GoogleApi.IAP.V1.Model.ReauthSettings)
end

defimpl Poison.Decoder, for: GoogleApi.IAP.V1.Model.AccessSettings do
  def decode(value, options) do
    GoogleApi.IAP.V1.Model.AccessSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAP.V1.Model.AccessSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
