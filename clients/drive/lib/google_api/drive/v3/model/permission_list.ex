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

defmodule GoogleApi.Drive.V3.Model.PermissionList do
  @moduledoc """
  A list of permissions for a file.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `drive#permissionList`) - Identifies what kind of resource this is. Value: the fixed string `"drive#permissionList"`.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The page token for the next page of permissions. This field will be absent if the end of the permissions list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results. The page token is typically valid for several hours. However, if new items are added or removed, your expected results might differ.
  *   `permissions` (*type:* `list(GoogleApi.Drive.V3.Model.Permission.t)`, *default:* `nil`) - The list of permissions. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil,
          :permissions => list(GoogleApi.Drive.V3.Model.Permission.t()) | nil
        }

  field(:kind)
  field(:nextPageToken)
  field(:permissions, as: GoogleApi.Drive.V3.Model.Permission, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.PermissionList do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.PermissionList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.PermissionList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
