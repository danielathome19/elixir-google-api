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

defmodule GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponentDatabaseProperties do
  @moduledoc """
  A set of properties describing an SAP Database layer.

  ## Attributes

  *   `databaseSid` (*type:* `String.t`, *default:* `nil`) - Optional. SID of the system database.
  *   `databaseType` (*type:* `String.t`, *default:* `nil`) - Required. Type of the database. HANA, DB2, etc.
  *   `databaseVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The version of the database software running in the system.
  *   `instanceNumber` (*type:* `String.t`, *default:* `nil`) - Optional. Instance number of the SAP instance.
  *   `primaryInstanceUri` (*type:* `String.t`, *default:* `nil`) - Required. URI of the recognized primary instance of the database.
  *   `sharedNfsUri` (*type:* `String.t`, *default:* `nil`) - Optional. URI of the recognized shared NFS of the database. May be empty if the database has only a single node.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :databaseSid => String.t() | nil,
          :databaseType => String.t() | nil,
          :databaseVersion => String.t() | nil,
          :instanceNumber => String.t() | nil,
          :primaryInstanceUri => String.t() | nil,
          :sharedNfsUri => String.t() | nil
        }

  field(:databaseSid)
  field(:databaseType)
  field(:databaseVersion)
  field(:instanceNumber)
  field(:primaryInstanceUri)
  field(:sharedNfsUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponentDatabaseProperties do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponentDatabaseProperties.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponentDatabaseProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
