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

defmodule GoogleApi.Chat.V1.Model.CommonEventObject do
  @moduledoc """
  Represents information about the user's client, such as locale, host app, and platform. For Chat apps, `CommonEventObject` includes data submitted by users interacting with cards, like data entered in [dialogs](https://developers.google.com/chat/how-tos/bot-dialogs).

  ## Attributes

  *   `formInputs` (*type:* `%{optional(String.t) => GoogleApi.Chat.V1.Model.Inputs.t}`, *default:* `nil`) - A map containing the current values of the widgets in a card. The map keys are the string IDs assigned to each widget, and the values represent inputs to the widget. Depending on the input data type, a different object represents each input: For single-value widgets, `StringInput`. For multi-value widgets, an array of `StringInput` objects. For a date-time picker, a `DateTimeInput`. For a date-only picker, a `DateInput`. For a time-only picker, a `TimeInput`. Corresponds with the data entered by a user on a card in a [dialog](https://developers.google.com/chat/how-tos/bot-dialogs).
  *   `hostApp` (*type:* `String.t`, *default:* `nil`) - The hostApp enum which indicates the app the add-on is invoked from. Always `CHAT` for Chat apps.
  *   `invokedFunction` (*type:* `String.t`, *default:* `nil`) - Name of the invoked function associated with the widget. Only set for Chat apps.
  *   `parameters` (*type:* `map()`, *default:* `nil`) - Custom [parameters](/chat/api/reference/rest/v1/cards#ActionParameter) passed to the invoked function. Both keys and values must be strings.
  *   `platform` (*type:* `String.t`, *default:* `nil`) - The platform enum which indicates the platform where the event originates (`WEB`, `IOS`, or `ANDROID`). Not supported by Chat apps.
  *   `timeZone` (*type:* `GoogleApi.Chat.V1.Model.TimeZone.t`, *default:* `nil`) - The timezone ID and offset from Coordinated Universal Time (UTC).
  *   `userLocale` (*type:* `String.t`, *default:* `nil`) - The full locale.displayName in the format of [ISO 639 language code]-[ISO 3166 country/region code] such as "en-US". Not supported by Chat apps.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formInputs => %{optional(String.t()) => GoogleApi.Chat.V1.Model.Inputs.t()} | nil,
          :hostApp => String.t() | nil,
          :invokedFunction => String.t() | nil,
          :parameters => map() | nil,
          :platform => String.t() | nil,
          :timeZone => GoogleApi.Chat.V1.Model.TimeZone.t() | nil,
          :userLocale => String.t() | nil
        }

  field(:formInputs, as: GoogleApi.Chat.V1.Model.Inputs, type: :map)
  field(:hostApp)
  field(:invokedFunction)
  field(:parameters, type: :map)
  field(:platform)
  field(:timeZone, as: GoogleApi.Chat.V1.Model.TimeZone)
  field(:userLocale)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.CommonEventObject do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.CommonEventObject.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.CommonEventObject do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
