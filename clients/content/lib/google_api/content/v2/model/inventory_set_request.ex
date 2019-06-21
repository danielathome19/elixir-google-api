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

defmodule GoogleApi.Content.V2.Model.InventorySetRequest do
  @moduledoc """


  ## Attributes

  - availability (String.t): The availability of the product. Defaults to `nil`.
  - customLabel0 (String.t): Custom label 0 for custom grouping of items in a Shopping campaign. Only supported for online products. Defaults to `nil`.
  - customLabel1 (String.t): Custom label 1 for custom grouping of items in a Shopping campaign. Only supported for online products. Defaults to `nil`.
  - customLabel2 (String.t): Custom label 2 for custom grouping of items in a Shopping campaign. Only supported for online products. Defaults to `nil`.
  - customLabel3 (String.t): Custom label 3 for custom grouping of items in a Shopping campaign. Only supported for online products. Defaults to `nil`.
  - customLabel4 (String.t): Custom label 3 for custom grouping of items in a Shopping campaign. Only supported for online products. Defaults to `nil`.
  - installment (GoogleApi.Content.V2.Model.Installment.t): Number and amount of installments to pay for an item. Brazil only. Defaults to `nil`.
  - instoreProductLocation (String.t): The instore product location. Supported only for local products. Defaults to `nil`.
  - loyaltyPoints (GoogleApi.Content.V2.Model.LoyaltyPoints.t): Loyalty points that users receive after purchasing the item. Japan only. Defaults to `nil`.
  - pickup (GoogleApi.Content.V2.Model.InventoryPickup.t): Store pickup information. Only supported for local inventory. Not setting pickup means "don't update" while setting it to the empty value ({} in JSON) means "delete". Otherwise, pickupMethod and pickupSla must be set together, unless pickupMethod is "not supported". Defaults to `nil`.
  - price (GoogleApi.Content.V2.Model.Price.t): The price of the product. Defaults to `nil`.
  - quantity (integer()): The quantity of the product. Must be equal to or greater than zero. Supported only for local products. Defaults to `nil`.
  - salePrice (GoogleApi.Content.V2.Model.Price.t): The sale price of the product. Mandatory if sale_price_effective_date is defined. Defaults to `nil`.
  - salePriceEffectiveDate (String.t): A date range represented by a pair of ISO 8601 dates separated by a space, comma, or slash. Both dates might be specified as 'null' if undecided. Defaults to `nil`.
  - sellOnGoogleQuantity (integer()): The quantity of the product that is available for selling on Google. Supported only for online products. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availability => String.t(),
          :customLabel0 => String.t(),
          :customLabel1 => String.t(),
          :customLabel2 => String.t(),
          :customLabel3 => String.t(),
          :customLabel4 => String.t(),
          :installment => GoogleApi.Content.V2.Model.Installment.t(),
          :instoreProductLocation => String.t(),
          :loyaltyPoints => GoogleApi.Content.V2.Model.LoyaltyPoints.t(),
          :pickup => GoogleApi.Content.V2.Model.InventoryPickup.t(),
          :price => GoogleApi.Content.V2.Model.Price.t(),
          :quantity => integer(),
          :salePrice => GoogleApi.Content.V2.Model.Price.t(),
          :salePriceEffectiveDate => String.t(),
          :sellOnGoogleQuantity => integer()
        }

  field(:availability)
  field(:customLabel0)
  field(:customLabel1)
  field(:customLabel2)
  field(:customLabel3)
  field(:customLabel4)
  field(:installment, as: GoogleApi.Content.V2.Model.Installment)
  field(:instoreProductLocation)
  field(:loyaltyPoints, as: GoogleApi.Content.V2.Model.LoyaltyPoints)
  field(:pickup, as: GoogleApi.Content.V2.Model.InventoryPickup)
  field(:price, as: GoogleApi.Content.V2.Model.Price)
  field(:quantity)
  field(:salePrice, as: GoogleApi.Content.V2.Model.Price)
  field(:salePriceEffectiveDate)
  field(:sellOnGoogleQuantity)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.InventorySetRequest do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.InventorySetRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.InventorySetRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
