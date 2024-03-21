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

defmodule GoogleApi.GKEBackup.V1.Model.RestorePlan do
  @moduledoc """
  The configuration of a potential series of Restore operations to be performed against Backups belong to a particular BackupPlan.

  ## Attributes

  *   `backupPlan` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. A reference to the BackupPlan from which Backups may be used as the source for Restores created via this RestorePlan. Format: `projects/*/locations/*/backupPlans/*`.
  *   `cluster` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The target cluster into which Restores created via this RestorePlan will restore data. NOTE: the cluster's region must be the same as the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this RestorePlan resource was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. User specified descriptive string for this RestorePlan.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestorePlan`, and systems are expected to put that etag in the request to `UpdateRestorePlan` or `DeleteRestorePlan` to ensure that their change will be applied to the same version of the resource.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. A set of custom labels supplied by user.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The full name of the RestorePlan resource. Format: `projects/*/locations/*/restorePlans/*`.
  *   `restoreConfig` (*type:* `GoogleApi.GKEBackup.V1.Model.RestoreConfig.t`, *default:* `nil`) - Required. Configuration of Restores created via this RestorePlan.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the RestorePlan. This State field reflects the various stages a RestorePlan can be in during the Create operation.
  *   `stateReason` (*type:* `String.t`, *default:* `nil`) - Output only. Human-readable description of why RestorePlan is in the current `state`
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this RestorePlan resource was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupPlan => String.t() | nil,
          :cluster => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :restoreConfig => GoogleApi.GKEBackup.V1.Model.RestoreConfig.t() | nil,
          :state => String.t() | nil,
          :stateReason => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:backupPlan)
  field(:cluster)
  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:restoreConfig, as: GoogleApi.GKEBackup.V1.Model.RestoreConfig)
  field(:state)
  field(:stateReason)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.GKEBackup.V1.Model.RestorePlan do
  def decode(value, options) do
    GoogleApi.GKEBackup.V1.Model.RestorePlan.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEBackup.V1.Model.RestorePlan do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
