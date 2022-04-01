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

defmodule GoogleApi.CloudSearch.V1.Model.UserId do
  @moduledoc """
  Primary key for User resource.

  ## Attributes

  *   `actingUserId` (*type:* `String.t`, *default:* `nil`) - Optional. Opaque, server-assigned ID of the user profile associated with App/user acting on behalf of the human user. This is currently only set when a 3P application is acting on the user's behalf.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Opaque, server-assigned ID of the User.
  *   `originAppId` (*type:* `GoogleApi.CloudSearch.V1.Model.AppId.t`, *default:* `nil`) - Optional. Identifier of the App involved (directly or on behalf of a human creator) in creating this message. This is not set if the user posted a message directly, but is used in the case of, for example, a message being generated by a 1P integration based on a user action (creating an event, creating a task etc). This should only be used on the BE. For clients, please use the field in the FE message proto instead (google3/apps/dynamite/v1/frontend/api/message.proto?q=origin_app_id).
  *   `type` (*type:* `String.t`, *default:* `nil`) - Clients do not need to send UserType to Backend, but Backend will always send this field to clients per the following rule: 1. For HUMAN Ids, the field is empty but by default .getType() will return HUMAN. 2. For BOT Ids, the field is ALWAYS set to BOT.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actingUserId => String.t() | nil,
          :id => String.t() | nil,
          :originAppId => GoogleApi.CloudSearch.V1.Model.AppId.t() | nil,
          :type => String.t() | nil
        }

  field(:actingUserId)
  field(:id)
  field(:originAppId, as: GoogleApi.CloudSearch.V1.Model.AppId)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.UserId do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.UserId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.UserId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
