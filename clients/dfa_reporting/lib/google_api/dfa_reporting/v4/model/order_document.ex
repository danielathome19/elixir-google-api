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

defmodule GoogleApi.DFAReporting.V4.Model.OrderDocument do
  @moduledoc """
  Contains properties of a Planning order document.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this order document.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Advertiser ID of this order document.
  *   `amendedOrderDocumentId` (*type:* `String.t`, *default:* `nil`) - The amended order document ID of this order document. An order document can be created by optionally amending another order document so that the change history can be preserved.
  *   `approvedByUserProfileIds` (*type:* `list(String.t)`, *default:* `nil`) - IDs of users who have approved this order document.
  *   `cancelled` (*type:* `boolean()`, *default:* `nil`) - Whether this order document is cancelled.
  *   `createdInfo` (*type:* `GoogleApi.DFAReporting.V4.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the creation of this order document.
  *   `effectiveDate` (*type:* `Date.t`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this order document.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#orderDocument".
  *   `lastSentRecipients` (*type:* `list(String.t)`, *default:* `nil`) - List of email addresses that received the last sent document.
  *   `lastSentTime` (*type:* `DateTime.t`, *default:* `nil`) - 
  *   `orderId` (*type:* `String.t`, *default:* `nil`) - ID of the order from which this order document is created.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Project ID of this order document.
  *   `signed` (*type:* `boolean()`, *default:* `nil`) - Whether this order document has been signed.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this order document.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of this order document.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of this order document
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :advertiserId => String.t() | nil,
          :amendedOrderDocumentId => String.t() | nil,
          :approvedByUserProfileIds => list(String.t()) | nil,
          :cancelled => boolean() | nil,
          :createdInfo => GoogleApi.DFAReporting.V4.Model.LastModifiedInfo.t() | nil,
          :effectiveDate => Date.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :lastSentRecipients => list(String.t()) | nil,
          :lastSentTime => DateTime.t() | nil,
          :orderId => String.t() | nil,
          :projectId => String.t() | nil,
          :signed => boolean() | nil,
          :subaccountId => String.t() | nil,
          :title => String.t() | nil,
          :type => String.t() | nil
        }

  field(:accountId)
  field(:advertiserId)
  field(:amendedOrderDocumentId)
  field(:approvedByUserProfileIds, type: :list)
  field(:cancelled)
  field(:createdInfo, as: GoogleApi.DFAReporting.V4.Model.LastModifiedInfo)
  field(:effectiveDate, as: Date)
  field(:id)
  field(:kind)
  field(:lastSentRecipients, type: :list)
  field(:lastSentTime, as: DateTime)
  field(:orderId)
  field(:projectId)
  field(:signed)
  field(:subaccountId)
  field(:title)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.OrderDocument do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.OrderDocument.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.OrderDocument do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
