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

defmodule GoogleApi.CloudResourceManager.V1.Model.Organization do
  @moduledoc """
  The root node in the resource hierarchy to which a particular entity's (e.g., company) resources belong.

  ## Attributes

  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp when the Organization was created. Assigned by the server.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - A human-readable string that refers to the Organization in the GCP Console UI. This string is set by the server and cannot be changed. The string will be set to the primary domain (for example, "google.com") of the G Suite customer that owns the organization.
  *   `lifecycleState` (*type:* `String.t`, *default:* `nil`) - The organization's current lifecycle state. Assigned by the server.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the organization. This is the organization's relative path in the API. Its format is "organizations/[organization_id]". For example, "organizations/1234".
  *   `owner` (*type:* `GoogleApi.CloudResourceManager.V1.Model.OrganizationOwner.t`, *default:* `nil`) - The owner of this Organization. The owner should be specified on creation. Once set, it cannot be changed. This field is required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTime => DateTime.t(),
          :displayName => String.t(),
          :lifecycleState => String.t(),
          :name => String.t(),
          :owner => GoogleApi.CloudResourceManager.V1.Model.OrganizationOwner.t()
        }

  field(:creationTime, as: DateTime)
  field(:displayName)
  field(:lifecycleState)
  field(:name)
  field(:owner, as: GoogleApi.CloudResourceManager.V1.Model.OrganizationOwner)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.Organization do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.Organization.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.Organization do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
