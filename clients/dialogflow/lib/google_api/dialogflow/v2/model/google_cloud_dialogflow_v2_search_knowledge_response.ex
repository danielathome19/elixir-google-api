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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeResponse do
  @moduledoc """
  The response message for Conversations.SearchKnowledge.

  ## Attributes

  *   `answers` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeAnswer.t)`, *default:* `nil`) - Most relevant snippets extracted from articles in the given knowledge base, ordered by confidence.
  *   `rewrittenQuery` (*type:* `String.t`, *default:* `nil`) - The rewritten query used to search knowledge.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answers =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeAnswer.t())
            | nil,
          :rewrittenQuery => String.t() | nil
        }

  field(:answers,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeAnswer,
    type: :list
  )

  field(:rewrittenQuery)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchKnowledgeResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
