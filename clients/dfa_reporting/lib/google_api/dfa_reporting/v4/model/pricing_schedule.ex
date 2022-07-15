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

defmodule GoogleApi.DFAReporting.V4.Model.PricingSchedule do
  @moduledoc """
  Pricing Schedule

  ## Attributes

  *   `capCostOption` (*type:* `String.t`, *default:* `nil`) - Placement cap cost option.
  *   `endDate` (*type:* `Date.t`, *default:* `nil`) - 
  *   `flighted` (*type:* `boolean()`, *default:* `nil`) - Whether this placement is flighted. If true, pricing periods will be computed automatically.
  *   `floodlightActivityId` (*type:* `String.t`, *default:* `nil`) - Floodlight activity ID associated with this placement. This field should be set when placement pricing type is set to PRICING_TYPE_CPA.
  *   `pricingPeriods` (*type:* `list(GoogleApi.DFAReporting.V4.Model.PricingSchedulePricingPeriod.t)`, *default:* `nil`) - Pricing periods for this placement.
  *   `pricingType` (*type:* `String.t`, *default:* `nil`) - Placement pricing type. This field is required on insertion.
  *   `startDate` (*type:* `Date.t`, *default:* `nil`) - 
  *   `testingStartDate` (*type:* `Date.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :capCostOption => String.t() | nil,
          :endDate => Date.t() | nil,
          :flighted => boolean() | nil,
          :floodlightActivityId => String.t() | nil,
          :pricingPeriods =>
            list(GoogleApi.DFAReporting.V4.Model.PricingSchedulePricingPeriod.t()) | nil,
          :pricingType => String.t() | nil,
          :startDate => Date.t() | nil,
          :testingStartDate => Date.t() | nil
        }

  field(:capCostOption)
  field(:endDate, as: Date)
  field(:flighted)
  field(:floodlightActivityId)

  field(:pricingPeriods,
    as: GoogleApi.DFAReporting.V4.Model.PricingSchedulePricingPeriod,
    type: :list
  )

  field(:pricingType)
  field(:startDate, as: Date)
  field(:testingStartDate, as: Date)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.PricingSchedule do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.PricingSchedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.PricingSchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
