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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExportIntentsResponse do
  @moduledoc """
  The response message for Intents.ExportIntents.

  ## Attributes

  *   `intentsContent` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3InlineDestination.t`, *default:* `nil`) - Uncompressed byte content for intents. This field is populated only if `intents_content_inline` is set to true in ExportIntentsRequest.
  *   `intentsUri` (*type:* `String.t`, *default:* `nil`) - The URI to a file containing the exported intents. This field is populated only if `intents_uri` is specified in ExportIntentsRequest.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :intentsContent =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3InlineDestination.t() | nil,
          :intentsUri => String.t() | nil
        }

  field(:intentsContent,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3InlineDestination
  )

  field(:intentsUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExportIntentsResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExportIntentsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExportIntentsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
