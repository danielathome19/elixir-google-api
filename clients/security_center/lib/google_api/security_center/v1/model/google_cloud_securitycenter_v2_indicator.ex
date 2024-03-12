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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2Indicator do
  @moduledoc """
  Represents what's commonly known as an _indicator of compromise_ (IoC) in computer forensics. This is an artifact observed on a network or in an operating system that, with high confidence, indicates a computer intrusion. For more information, see [Indicator of compromise](https://en.wikipedia.org/wiki/Indicator_of_compromise).

  ## Attributes

  *   `domains` (*type:* `list(String.t)`, *default:* `nil`) - List of domains associated to the Finding.
  *   `ipAddresses` (*type:* `list(String.t)`, *default:* `nil`) - The list of IP addresses that are associated with the finding.
  *   `signatures` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2ProcessSignature.t)`, *default:* `nil`) - The list of matched signatures indicating that the given process is present in the environment.
  *   `uris` (*type:* `list(String.t)`, *default:* `nil`) - The list of URIs associated to the Findings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :domains => list(String.t()) | nil,
          :ipAddresses => list(String.t()) | nil,
          :signatures =>
            list(
              GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2ProcessSignature.t()
            )
            | nil,
          :uris => list(String.t()) | nil
        }

  field(:domains, type: :list)
  field(:ipAddresses, type: :list)

  field(:signatures,
    as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2ProcessSignature,
    type: :list
  )

  field(:uris, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2Indicator do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2Indicator.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2Indicator do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
