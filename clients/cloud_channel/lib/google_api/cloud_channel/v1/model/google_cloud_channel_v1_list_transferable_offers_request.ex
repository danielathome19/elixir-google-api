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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListTransferableOffersRequest do
  @moduledoc """
  Request message for CloudChannelService.ListTransferableOffers

  ## Attributes

  *   `billingAccount` (*type:* `String.t`, *default:* `nil`) - Optional. The Billing Account to look up Offers for. Format: accounts/{account_id}/billingAccounts/{billing_account_id}. This field is only relevant for multi-currency accounts. It should be left empty for single currency accounts.
  *   `cloudIdentityId` (*type:* `String.t`, *default:* `nil`) - Customer's Cloud Identity ID
  *   `customerName` (*type:* `String.t`, *default:* `nil`) - A reseller should create a customer and use the resource name of that customer here.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Optional. The BCP-47 language code. For example, "en-US". The response will localize in the corresponding language code, if specified. The default value is "en-US".
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Requested page size. Server might return fewer results than requested. If unspecified, returns at most 100 offers. The maximum value is 1000; the server will coerce values above 1000.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A token for a page of results other than the first page. Obtained using ListTransferableOffersResponse.next_page_token of the previous CloudChannelService.ListTransferableOffers call.
  *   `sku` (*type:* `String.t`, *default:* `nil`) - Required. The SKU to look up Offers for.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingAccount => String.t() | nil,
          :cloudIdentityId => String.t() | nil,
          :customerName => String.t() | nil,
          :languageCode => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :sku => String.t() | nil
        }

  field(:billingAccount)
  field(:cloudIdentityId)
  field(:customerName)
  field(:languageCode)
  field(:pageSize)
  field(:pageToken)
  field(:sku)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListTransferableOffersRequest do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListTransferableOffersRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListTransferableOffersRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
