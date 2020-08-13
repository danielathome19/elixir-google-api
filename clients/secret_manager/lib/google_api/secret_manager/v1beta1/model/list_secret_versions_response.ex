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

defmodule GoogleApi.SecretManager.V1beta1.Model.ListSecretVersionsResponse do
  @moduledoc """
  Response message for SecretManagerService.ListSecretVersions.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve the next page of results. Pass this value in ListSecretVersionsRequest.page_token to retrieve the next page.
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - The total number of SecretVersions.
  *   `versions` (*type:* `list(GoogleApi.SecretManager.V1beta1.Model.SecretVersion.t)`, *default:* `nil`) - The list of SecretVersions sorted in reverse by create_time (newest first).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :totalSize => integer(),
          :versions => list(GoogleApi.SecretManager.V1beta1.Model.SecretVersion.t())
        }

  field(:nextPageToken)
  field(:totalSize)
  field(:versions, as: GoogleApi.SecretManager.V1beta1.Model.SecretVersion, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SecretManager.V1beta1.Model.ListSecretVersionsResponse do
  def decode(value, options) do
    GoogleApi.SecretManager.V1beta1.Model.ListSecretVersionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecretManager.V1beta1.Model.ListSecretVersionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
