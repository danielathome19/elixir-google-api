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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3QueryInput do
  @moduledoc """
  Represents the query input. It can contain one of: 1. A conversational query in the form of text. 2. An intent query that specifies which intent to trigger. 3. Natural language speech audio to be processed. 4. An event to be triggered. 5. DTMF digits to invoke an intent and fill in parameter value. 6. The results of a tool executed by the client.

  ## Attributes

  *   `audio` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AudioInput.t`, *default:* `nil`) - The natural language speech audio to be processed.
  *   `dtmf` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DtmfInput.t`, *default:* `nil`) - The DTMF event to be handled.
  *   `event` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventInput.t`, *default:* `nil`) - The event to be triggered.
  *   `intent` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3IntentInput.t`, *default:* `nil`) - The intent to be triggered.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Required. The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  *   `text` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TextInput.t`, *default:* `nil`) - The natural language text to be processed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audio => GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AudioInput.t() | nil,
          :dtmf => GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DtmfInput.t() | nil,
          :event => GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventInput.t() | nil,
          :intent => GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3IntentInput.t() | nil,
          :languageCode => String.t() | nil,
          :text => GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TextInput.t() | nil
        }

  field(:audio, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3AudioInput)
  field(:dtmf, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DtmfInput)
  field(:event, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3EventInput)
  field(:intent, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3IntentInput)
  field(:languageCode)
  field(:text, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TextInput)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3QueryInput do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3QueryInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3QueryInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
