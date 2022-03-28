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

defmodule GoogleApi.Memcache.V1beta2.Model.MaintenanceSchedule do
  @moduledoc """
  Upcoming maintenance schedule.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The end time of any upcoming scheduled maintenance for this instance.
  *   `scheduleDeadlineTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The start time of any upcoming scheduled maintenance for this instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :scheduleDeadlineTime => DateTime.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:scheduleDeadlineTime, as: DateTime)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Memcache.V1beta2.Model.MaintenanceSchedule do
  def decode(value, options) do
    GoogleApi.Memcache.V1beta2.Model.MaintenanceSchedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Memcache.V1beta2.Model.MaintenanceSchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end