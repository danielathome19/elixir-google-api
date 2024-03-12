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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3QueryParameters do
  @moduledoc """
  Represents the parameters of a conversational query.

  ## Attributes

  *   `analyzeQueryTextSentiment` (*type:* `boolean()`, *default:* `nil`) - Configures whether sentiment analysis should be performed. If not provided, sentiment analysis is not performed.
  *   `channel` (*type:* `String.t`, *default:* `nil`) - The channel which this query is for. If specified, only the ResponseMessage associated with the channel will be returned. If no ResponseMessage is associated with the channel, it falls back to the ResponseMessage with unspecified channel. If unspecified, the ResponseMessage with unspecified channel will be returned.
  *   `currentPage` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the page to override the current page in the session. Format: `projects//locations//agents//flows//pages/`. If `current_page` is specified, the previous state of the session will be ignored by Dialogflow, including the previous page and the previous session parameters. In most cases, current_page and parameters should be configured together to direct a session to a specific state.
  *   `disableWebhook` (*type:* `boolean()`, *default:* `nil`) - Whether to disable webhook calls for this request.
  *   `endUserMetadata` (*type:* `map()`, *default:* `nil`) - Optional. Information about the end-user to improve the relevance and accuracy of generative answers. This will be interpreted and used by a language model, so, for good results, the data should be self-descriptive, and in a simple structure. Example: ```json { "subscription plan": "Business Premium Plus", "devices owned": [ {"model": "Google Pixel 7"}, {"model": "Google Pixel Tablet"} ] } ```
  *   `flowVersions` (*type:* `list(String.t)`, *default:* `nil`) - A list of flow versions to override for the request. Format: `projects//locations//agents//flows//versions/`. If version 1 of flow X is included in this list, the traffic of flow X will go through version 1 regardless of the version configuration in the environment. Each flow can have at most one version specified in this list.
  *   `geoLocation` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleTypeLatLng.t`, *default:* `nil`) - The geo location of this conversational query.
  *   `parameters` (*type:* `map()`, *default:* `nil`) - Additional parameters to be put into session parameters. To remove a parameter from the session, clients should explicitly set the parameter value to null. You can reference the session parameters in the agent with the following format: $session.params.parameter-id. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: * MapKey type: string * MapKey value: parameter name * MapValue type: If parameter's entity type is a composite entity then use map, otherwise, depending on the parameter value type, it could be one of string, number, boolean, null, list or map. * MapValue value: If parameter's entity type is a composite entity then use map from composite entity property names to property values, otherwise, use parameter value.
  *   `payload` (*type:* `map()`, *default:* `nil`) - This field can be used to pass custom data into the webhook associated with the agent. Arbitrary JSON objects are supported. Some integrations that query a Dialogflow agent may provide additional information in the payload. In particular, for the Dialogflow Phone Gateway integration, this field has the form: ``` { "telephony": { "caller_id": "+18558363987" } } ```
  *   `searchConfig` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SearchConfig.t`, *default:* `nil`) - Optional. Search configuration for UCS search queries.
  *   `sessionEntityTypes` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SessionEntityType.t)`, *default:* `nil`) - Additional session entity types to replace or extend developer entity types with. The entity synonyms apply to all languages and persist for the session of this query.
  *   `sessionTtl` (*type:* `String.t`, *default:* `nil`) - Optional. Configure lifetime of the Dialogflow session. By default, a Dialogflow session remains active and its data is stored for 30 minutes after the last request is sent for the session. This value should be no longer than 1 day.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The time zone of this conversational query from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. If not provided, the time zone specified in the agent is used.
  *   `webhookHeaders` (*type:* `map()`, *default:* `nil`) - This field can be used to pass HTTP headers for a webhook call. These headers will be sent to webhook along with the headers that have been configured through Dialogflow web console. The headers defined within this field will overwrite the headers configured through Dialogflow console if there is a conflict. Header names are case-insensitive. Google's specified headers are not allowed. Including: "Host", "Content-Length", "Connection", "From", "User-Agent", "Accept-Encoding", "If-Modified-Since", "If-None-Match", "X-Forwarded-For", etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analyzeQueryTextSentiment => boolean() | nil,
          :channel => String.t() | nil,
          :currentPage => String.t() | nil,
          :disableWebhook => boolean() | nil,
          :endUserMetadata => map() | nil,
          :flowVersions => list(String.t()) | nil,
          :geoLocation => GoogleApi.Dialogflow.V3.Model.GoogleTypeLatLng.t() | nil,
          :parameters => map() | nil,
          :payload => map() | nil,
          :searchConfig =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SearchConfig.t() | nil,
          :sessionEntityTypes =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SessionEntityType.t())
            | nil,
          :sessionTtl => String.t() | nil,
          :timeZone => String.t() | nil,
          :webhookHeaders => map() | nil
        }

  field(:analyzeQueryTextSentiment)
  field(:channel)
  field(:currentPage)
  field(:disableWebhook)
  field(:endUserMetadata, type: :map)
  field(:flowVersions, type: :list)
  field(:geoLocation, as: GoogleApi.Dialogflow.V3.Model.GoogleTypeLatLng)
  field(:parameters, type: :map)
  field(:payload, type: :map)
  field(:searchConfig, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SearchConfig)

  field(:sessionEntityTypes,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3SessionEntityType,
    type: :list
  )

  field(:sessionTtl)
  field(:timeZone)
  field(:webhookHeaders, type: :map)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3QueryParameters do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3QueryParameters.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3QueryParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
