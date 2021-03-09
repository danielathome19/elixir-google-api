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

defmodule GoogleApi.Compute.V1.Model.SslPolicy do
  @moduledoc """
  Represents an SSL Policy resource.

  Use SSL policies to control the SSL features, such as versions and cipher suites, offered by an HTTPS or SSL Proxy load balancer. For more information, read  SSL Policy Concepts. (== resource_for {$api_version}.sslPolicies ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `customFeatures` (*type:* `list(String.t)`, *default:* `nil`) - A list of features enabled when the selected profile is CUSTOM. The
      - method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `enabledFeatures` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] The list of features enabled in the SSL policy.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a SslPolicy. An up-to-date fingerprint must be provided in order to update the SslPolicy, otherwise the request will fail with error 412 conditionNotMet.

      To see the latest fingerprint, make a get() request to retrieve an SslPolicy.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#sslPolicy`) - [Output only] Type of the resource. Always compute#sslPolicyfor SSL policies.
  *   `minTlsVersion` (*type:* `String.t`, *default:* `nil`) - The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `profile` (*type:* `String.t`, *default:* `nil`) - Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `warnings` (*type:* `list(GoogleApi.Compute.V1.Model.SslPolicyWarnings.t)`, *default:* `nil`) - [Output Only] If potential misconfigurations are detected for this SSL policy, this field will be populated with warning messages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t() | nil,
          :customFeatures => list(String.t()) | nil,
          :description => String.t() | nil,
          :enabledFeatures => list(String.t()) | nil,
          :fingerprint => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :minTlsVersion => String.t() | nil,
          :name => String.t() | nil,
          :profile => String.t() | nil,
          :selfLink => String.t() | nil,
          :warnings => list(GoogleApi.Compute.V1.Model.SslPolicyWarnings.t()) | nil
        }

  field(:creationTimestamp)
  field(:customFeatures, type: :list)
  field(:description)
  field(:enabledFeatures, type: :list)
  field(:fingerprint)
  field(:id)
  field(:kind)
  field(:minTlsVersion)
  field(:name)
  field(:profile)
  field(:selfLink)
  field(:warnings, as: GoogleApi.Compute.V1.Model.SslPolicyWarnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SslPolicy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SslPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SslPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
