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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestionResult do
  @moduledoc """
  One response of different type of suggestion response which is used in the response of Participants.AnalyzeContent and Participants.AnalyzeContent, as well as HumanAgentAssistantEvent.

  ## Attributes

  *   `error` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus.t`, *default:* `nil`) - Error status if the request failed.
  *   `suggestArticlesResponse` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestArticlesResponse.t`, *default:* `nil`) - SuggestArticlesResponse if request is for ARTICLE_SUGGESTION.
  *   `suggestDialogflowAssistsResponse` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse.t`, *default:* `nil`) - SuggestDialogflowAssistsResponse if request is for DIALOGFLOW_ASSIST.
  *   `suggestEntityExtractionResponse` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse.t`, *default:* `nil`) - SuggestDialogflowAssistsResponse if request is for ENTITY_EXTRACTION.
  *   `suggestFaqAnswersResponse` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse.t`, *default:* `nil`) - SuggestFaqAnswersResponse if request is for FAQ_ANSWER.
  *   `suggestSmartRepliesResponse` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse.t`, *default:* `nil`) - SuggestSmartRepliesResponse if request is for SMART_REPLY.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus.t() | nil,
          :suggestArticlesResponse =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestArticlesResponse.t()
            | nil,
          :suggestDialogflowAssistsResponse =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse.t()
            | nil,
          :suggestEntityExtractionResponse =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse.t()
            | nil,
          :suggestFaqAnswersResponse =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse.t()
            | nil,
          :suggestSmartRepliesResponse =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse.t()
            | nil
        }

  field(:error, as: GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus)

  field(:suggestArticlesResponse,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestArticlesResponse
  )

  field(:suggestDialogflowAssistsResponse,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse
  )

  field(:suggestEntityExtractionResponse,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse
  )

  field(:suggestFaqAnswersResponse,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse
  )

  field(:suggestSmartRepliesResponse,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestionResult do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestionResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
