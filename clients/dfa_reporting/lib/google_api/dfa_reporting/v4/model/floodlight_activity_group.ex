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

defmodule GoogleApi.DFAReporting.V4.Model.FloodlightActivityGroup do
  @moduledoc """
  Contains properties of a Floodlight activity group.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this floodlight activity group. This is a read-only field that can be left blank.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Advertiser ID of this floodlight activity group. If this field is left blank, the value will be copied over either from the floodlight configuration's advertiser or from the existing activity group's advertiser.
  *   `advertiserIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V4.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
  *   `floodlightConfigurationId` (*type:* `String.t`, *default:* `nil`) - Floodlight configuration ID of this floodlight activity group. This is a required field.
  *   `floodlightConfigurationIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V4.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the floodlight configuration. This is a read-only, auto-generated field.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this floodlight activity group. This is a read-only, auto-generated field.
  *   `idDimensionValue` (*type:* `GoogleApi.DFAReporting.V4.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of this floodlight activity group. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#floodlightActivityGroup".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this floodlight activity group. This is a required field. Must be less than 65 characters long and cannot contain quotes.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this floodlight activity group. This is a read-only field that can be left blank.
  *   `tagString` (*type:* `String.t`, *default:* `nil`) - Value of the type= parameter in the floodlight tag, which the ad servers use to identify the activity group that the activity belongs to. This is optional: if empty, a new tag string will be generated for you. This string must be 1 to 8 characters long, with valid characters being a-z0-9[ _ ]. This tag string must also be unique among activity groups of the same floodlight configuration. This field is read-only after insertion.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of the floodlight activity group. This is a required field that is read-only after insertion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :advertiserId => String.t() | nil,
          :advertiserIdDimensionValue => GoogleApi.DFAReporting.V4.Model.DimensionValue.t() | nil,
          :floodlightConfigurationId => String.t() | nil,
          :floodlightConfigurationIdDimensionValue =>
            GoogleApi.DFAReporting.V4.Model.DimensionValue.t() | nil,
          :id => String.t() | nil,
          :idDimensionValue => GoogleApi.DFAReporting.V4.Model.DimensionValue.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :subaccountId => String.t() | nil,
          :tagString => String.t() | nil,
          :type => String.t() | nil
        }

  field(:accountId)
  field(:advertiserId)
  field(:advertiserIdDimensionValue, as: GoogleApi.DFAReporting.V4.Model.DimensionValue)
  field(:floodlightConfigurationId)

  field(:floodlightConfigurationIdDimensionValue,
    as: GoogleApi.DFAReporting.V4.Model.DimensionValue
  )

  field(:id)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V4.Model.DimensionValue)
  field(:kind)
  field(:name)
  field(:subaccountId)
  field(:tagString)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.FloodlightActivityGroup do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.FloodlightActivityGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.FloodlightActivityGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
