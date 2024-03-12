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

defmodule GoogleApi.Redis.V1.Model.BackupConfiguration do
  @moduledoc """
  Configuration for automatic backups

  ## Attributes

  *   `automatedBackupEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether customer visible automated backups are enabled on the instance.
  *   `backupRetentionSettings` (*type:* `GoogleApi.Redis.V1.Model.RetentionSettings.t`, *default:* `nil`) - Backup retention settings.
  *   `pointInTimeRecoveryEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether point-in-time recovery is enabled. This is optional field, if the database service does not have this feature or metadata is not available in control plane, this can be omitted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automatedBackupEnabled => boolean() | nil,
          :backupRetentionSettings => GoogleApi.Redis.V1.Model.RetentionSettings.t() | nil,
          :pointInTimeRecoveryEnabled => boolean() | nil
        }

  field(:automatedBackupEnabled)
  field(:backupRetentionSettings, as: GoogleApi.Redis.V1.Model.RetentionSettings)
  field(:pointInTimeRecoveryEnabled)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1.Model.BackupConfiguration do
  def decode(value, options) do
    GoogleApi.Redis.V1.Model.BackupConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1.Model.BackupConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
