# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Model.Headers do
  @moduledoc """
  A non-empty list of row or column headers for a table. Exactly one of prices, weights, numItems, postalCodeGroupNames, or location must be set.

  ## Attributes

  - locations (list(GoogleApi.Content.V2.Model.LocationIdSet.t)): A list of location ID sets. Must be non-empty. Can only be set if all other fields are not set. Defaults to `nil`.
  - numberOfItems (list(String.t)): A list of inclusive number of items upper bounds. The last value can be "infinity". For example ["10", "50", "infinity"] represents the headers "<= 10 items", " 50 items". Must be non-empty. Can only be set if all other fields are not set. Defaults to `nil`.
  - postalCodeGroupNames (list(String.t)): A list of postal group names. The last value can be "all other locations". Example: ["zone 1", "zone 2", "all other locations"]. The referred postal code groups must match the delivery country of the service. Must be non-empty. Can only be set if all other fields are not set. Defaults to `nil`.
  - prices (list(GoogleApi.Content.V2.Model.Price.t)): A list of inclusive order price upper bounds. The last price's value can be "infinity". For example [{"value": "10", "currency": "USD"}, {"value": "500", "currency": "USD"}, {"value": "infinity", "currency": "USD"}] represents the headers "<= $10", " $500". All prices within a service must have the same currency. Must be non-empty. Can only be set if all other fields are not set. Defaults to `nil`.
  - weights (list(GoogleApi.Content.V2.Model.Weight.t)): A list of inclusive order weight upper bounds. The last weight's value can be "infinity". For example [{"value": "10", "unit": "kg"}, {"value": "50", "unit": "kg"}, {"value": "infinity", "unit": "kg"}] represents the headers "<= 10kg", " 50kg". All weights within a service must have the same unit. Must be non-empty. Can only be set if all other fields are not set. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :locations => list(GoogleApi.Content.V2.Model.LocationIdSet.t()),
          :numberOfItems => list(String.t()),
          :postalCodeGroupNames => list(String.t()),
          :prices => list(GoogleApi.Content.V2.Model.Price.t()),
          :weights => list(GoogleApi.Content.V2.Model.Weight.t())
        }

  field(:locations, as: GoogleApi.Content.V2.Model.LocationIdSet, type: :list)
  field(:numberOfItems, type: :list)
  field(:postalCodeGroupNames, type: :list)
  field(:prices, as: GoogleApi.Content.V2.Model.Price, type: :list)
  field(:weights, as: GoogleApi.Content.V2.Model.Weight, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Headers do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.Headers.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Headers do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
