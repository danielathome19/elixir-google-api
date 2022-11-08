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

defmodule GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchaseLineItem do
  @moduledoc """
  Item-level info for a subscription purchase.

  ## Attributes

  *   `autoRenewingPlan` (*type:* `GoogleApi.AndroidPublisher.V3.Model.AutoRenewingPlan.t`, *default:* `nil`) - The item is auto renewing.
  *   `expiryTime` (*type:* `DateTime.t`, *default:* `nil`) - Time at which the subscription expired or will expire unless the access is extended (ex. renews).
  *   `offerDetails` (*type:* `GoogleApi.AndroidPublisher.V3.Model.OfferDetails.t`, *default:* `nil`) - The offer details for this item.
  *   `prepaidPlan` (*type:* `GoogleApi.AndroidPublisher.V3.Model.PrepaidPlan.t`, *default:* `nil`) - The item is prepaid.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The purchased product ID (for example, 'monthly001').
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoRenewingPlan => GoogleApi.AndroidPublisher.V3.Model.AutoRenewingPlan.t() | nil,
          :expiryTime => DateTime.t() | nil,
          :offerDetails => GoogleApi.AndroidPublisher.V3.Model.OfferDetails.t() | nil,
          :prepaidPlan => GoogleApi.AndroidPublisher.V3.Model.PrepaidPlan.t() | nil,
          :productId => String.t() | nil
        }

  field(:autoRenewingPlan, as: GoogleApi.AndroidPublisher.V3.Model.AutoRenewingPlan)
  field(:expiryTime, as: DateTime)
  field(:offerDetails, as: GoogleApi.AndroidPublisher.V3.Model.OfferDetails)
  field(:prepaidPlan, as: GoogleApi.AndroidPublisher.V3.Model.PrepaidPlan)
  field(:productId)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchaseLineItem do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchaseLineItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.SubscriptionPurchaseLineItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
