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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ImportFlowRequest do
  @moduledoc """
  The request message for Flows.ImportFlow.

  ## Attributes

  *   `flowContent` (*type:* `String.t`, *default:* `nil`) - Uncompressed raw byte content for flow.
  *   `flowImportStrategy` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FlowImportStrategy.t`, *default:* `nil`) - Optional. Specifies the import strategy used when resolving resource conflicts.
  *   `flowUri` (*type:* `String.t`, *default:* `nil`) - The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to import flow from. The format of this URI must be `gs:///`. Dialogflow performs a read operation for the Cloud Storage object on the caller's behalf, so your request authentication must have read permissions for the object. For more information, see [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  *   `importOption` (*type:* `String.t`, *default:* `nil`) - Flow import mode. If not specified, `KEEP` is assumed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :flowContent => String.t() | nil,
          :flowImportStrategy =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FlowImportStrategy.t() | nil,
          :flowUri => String.t() | nil,
          :importOption => String.t() | nil
        }

  field(:flowContent)

  field(:flowImportStrategy,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3FlowImportStrategy
  )

  field(:flowUri)
  field(:importOption)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ImportFlowRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ImportFlowRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ImportFlowRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
