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

defmodule GoogleApi.BigQueryReservation.V1.Model.Reservation do
  @moduledoc """
  A reservation is a mechanism used to guarantee slots to users.

  ## Attributes

  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of the reservation.
  *   `ignoreIdleSlots` (*type:* `boolean()`, *default:* `nil`) - If false, any query or pipeline job using this reservation will use idle slots from other reservations within the same admin project. If true, a query or pipeline job using this reservation will execute with the slot capacity specified in the slot_capacity field at most.
  *   `multiRegionAuxiliary` (*type:* `boolean()`, *default:* `nil`) - Applicable only for reservations located within one of the BigQuery multi-regions (US or EU). If set to true, this reservation is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this reservation is placed in the organization's default region.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the reservation, e.g., `projects/*/locations/*/reservations/team1-prod`. For the reservation id, it must only contain lower case alphanumeric characters or dashes.It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  *   `slotCapacity` (*type:* `String.t`, *default:* `nil`) - Minimum slots available to this reservation. A slot is a unit of computational power in BigQuery, and serves as the unit of parallelism. Queries using this reservation might use more slots during runtime if ignore_idle_slots is set to false. If the new reservation's slot capacity exceed the project's slot capacity or if total slot capacity of the new reservation and its siblings exceeds the project's slot capacity, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`. NOTE: for reservations in US or EU multi-regions slot capacity constraints are checked separately for default and auxiliary regions. See multi_region_auxiliary flag for more details.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last update time of the reservation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTime => DateTime.t() | nil,
          :ignoreIdleSlots => boolean() | nil,
          :multiRegionAuxiliary => boolean() | nil,
          :name => String.t() | nil,
          :slotCapacity => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:creationTime, as: DateTime)
  field(:ignoreIdleSlots)
  field(:multiRegionAuxiliary)
  field(:name)
  field(:slotCapacity)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryReservation.V1.Model.Reservation do
  def decode(value, options) do
    GoogleApi.BigQueryReservation.V1.Model.Reservation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryReservation.V1.Model.Reservation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
