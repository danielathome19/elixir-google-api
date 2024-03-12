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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1CustomOutputSpec do
  @moduledoc """
  A set of optional name-value pairs that define custom source properties to return with each finding that is generated by the custom module. The custom source properties that are defined here are included in the finding JSON under `sourceProperties`.

  ## Attributes

  *   `properties` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1Property.t)`, *default:* `nil`) - A list of custom output properties to add to the finding.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :properties =>
            list(GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1Property.t()) | nil
        }

  field(:properties,
    as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1Property,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1CustomOutputSpec do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1CustomOutputSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1CustomOutputSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
