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

defmodule GoogleApi.Metastore.V1.Model.LocationMetadata do
  @moduledoc """
  Metadata about the service in a location.

  ## Attributes

  *   `multiRegionMetadata` (*type:* `GoogleApi.Metastore.V1.Model.MultiRegionMetadata.t`, *default:* `nil`) - The multi-region metadata if the current region is a multi-region.
  *   `supportedHiveMetastoreVersions` (*type:* `list(GoogleApi.Metastore.V1.Model.HiveMetastoreVersion.t)`, *default:* `nil`) - The versions of Hive Metastore that can be used when creating a new metastore service in this location. The server guarantees that exactly one HiveMetastoreVersion in the list will set is_default.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :multiRegionMetadata => GoogleApi.Metastore.V1.Model.MultiRegionMetadata.t() | nil,
          :supportedHiveMetastoreVersions =>
            list(GoogleApi.Metastore.V1.Model.HiveMetastoreVersion.t()) | nil
        }

  field(:multiRegionMetadata, as: GoogleApi.Metastore.V1.Model.MultiRegionMetadata)

  field(:supportedHiveMetastoreVersions,
    as: GoogleApi.Metastore.V1.Model.HiveMetastoreVersion,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1.Model.LocationMetadata do
  def decode(value, options) do
    GoogleApi.Metastore.V1.Model.LocationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1.Model.LocationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
