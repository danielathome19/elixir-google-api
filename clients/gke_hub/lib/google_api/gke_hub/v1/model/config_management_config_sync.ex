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

defmodule GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSync do
  @moduledoc """
  Configuration for Config Sync

  ## Attributes

  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Enables the installation of ConfigSync. If set to true, ConfigSync resources will be created and the other ConfigSync fields will be applied if exist. If set to false, all other ConfigSync fields will be ignored, ConfigSync resources will be deleted. If omitted, ConfigSync resources will be managed depends on the presence of git field.
  *   `git` (*type:* `GoogleApi.GKEHub.V1.Model.ConfigManagementGitConfig.t`, *default:* `nil`) - Git repo configuration for the cluster.
  *   `oci` (*type:* `GoogleApi.GKEHub.V1.Model.ConfigManagementOciConfig.t`, *default:* `nil`) - OCI repo configuration for the cluster
  *   `preventDrift` (*type:* `boolean()`, *default:* `nil`) - Set to true to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts.
  *   `sourceFormat` (*type:* `String.t`, *default:* `nil`) - Specifies whether the Config Sync Repo is in “hierarchical” or “unstructured” mode.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabled => boolean() | nil,
          :git => GoogleApi.GKEHub.V1.Model.ConfigManagementGitConfig.t() | nil,
          :oci => GoogleApi.GKEHub.V1.Model.ConfigManagementOciConfig.t() | nil,
          :preventDrift => boolean() | nil,
          :sourceFormat => String.t() | nil
        }

  field(:enabled)
  field(:git, as: GoogleApi.GKEHub.V1.Model.ConfigManagementGitConfig)
  field(:oci, as: GoogleApi.GKEHub.V1.Model.ConfigManagementOciConfig)
  field(:preventDrift)
  field(:sourceFormat)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSync do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSync.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.ConfigManagementConfigSync do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
