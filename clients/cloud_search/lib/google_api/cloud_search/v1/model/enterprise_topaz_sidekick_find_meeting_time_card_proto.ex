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

defmodule GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickFindMeetingTimeCardProto do
  @moduledoc """
  Response to find meeting time among a set of people.

  ## Attributes

  *   `commonAvailableTimeSlots` (*type:* `list(GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickTimeSlot.t)`, *default:* `nil`) - Slots when all attendees have availability.
  *   `invitees` (*type:* `list(GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPerson.t)`, *default:* `nil`) - Invitees to the event.
  *   `requester` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPerson.t`, *default:* `nil`) - Requester.
  *   `scheduledMeeting` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickScheduledMeeting.t`, *default:* `nil`) - Details about the scheduled meeting, if one exists.
  *   `skippedInvitees` (*type:* `list(GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPerson.t)`, *default:* `nil`) - Invitees that have been skipped in the computation, most likely because they are groups.
  *   `timeBoundaries` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickTimeSlot.t`, *default:* `nil`) - Min and max timestamp used to find a common available timeslot.
  *   `timezoneId` (*type:* `String.t`, *default:* `nil`) - Timezone ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonAvailableTimeSlots =>
            list(GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickTimeSlot.t()) | nil,
          :invitees =>
            list(GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPerson.t()) | nil,
          :requester => GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPerson.t() | nil,
          :scheduledMeeting =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickScheduledMeeting.t() | nil,
          :skippedInvitees =>
            list(GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPerson.t()) | nil,
          :timeBoundaries =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickTimeSlot.t() | nil,
          :timezoneId => String.t() | nil
        }

  field(:commonAvailableTimeSlots,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickTimeSlot,
    type: :list
  )

  field(:invitees, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPerson, type: :list)
  field(:requester, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPerson)

  field(:scheduledMeeting,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickScheduledMeeting
  )

  field(:skippedInvitees,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPerson,
    type: :list
  )

  field(:timeBoundaries, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickTimeSlot)
  field(:timezoneId)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickFindMeetingTimeCardProto do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickFindMeetingTimeCardProto.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickFindMeetingTimeCardProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
