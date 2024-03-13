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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaRecommendResponse do
  @moduledoc """
  Response message for Recommend method.

  ## Attributes

  *   `attributionToken` (*type:* `String.t`, *default:* `nil`) - A unique attribution token. This should be included in the UserEvent logs resulting from this recommendation, which enables accurate attribution of recommendation model performance.
  *   `missingIds` (*type:* `list(String.t)`, *default:* `nil`) - IDs of documents in the request that were missing from the default Branch associated with the requested ServingConfig.
  *   `results` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaRecommendResponseRecommendationResult.t)`, *default:* `nil`) - A list of recommended Documents. The order represents the ranking (from the most relevant Document to the least).
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - True if RecommendRequest.validate_only was set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributionToken => String.t() | nil,
          :missingIds => list(String.t()) | nil,
          :results =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaRecommendResponseRecommendationResult.t()
            )
            | nil,
          :validateOnly => boolean() | nil
        }

  field(:attributionToken)
  field(:missingIds, type: :list)

  field(:results,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaRecommendResponseRecommendationResult,
    type: :list
  )

  field(:validateOnly)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaRecommendResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaRecommendResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaRecommendResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
