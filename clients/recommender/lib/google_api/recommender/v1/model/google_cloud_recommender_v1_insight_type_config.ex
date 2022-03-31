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

defmodule GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1InsightTypeConfig do
  @moduledoc """
  Configuration for an InsightType.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Allows clients to store small amounts of arbitrary data. Annotations must follow the Kubernetes syntax. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - A user-settable field to provide a human-readable name to be used in user interfaces.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Fingerprint of the InsightTypeConfig. Provides optimistic locking when updating.
  *   `insightTypeGenerationConfig` (*type:* `GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1InsightTypeGenerationConfig.t`, *default:* `nil`) - InsightTypeGenerationConfig which configures the generation of insights for this insight type.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of insight type config. Eg, projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/config
  *   `revisionId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The revision ID of the config. A new revision is committed whenever the config is changed in any way. The format is an 8-character hexadecimal string.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Last time when the config was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :displayName => String.t() | nil,
          :etag => String.t() | nil,
          :insightTypeGenerationConfig =>
            GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1InsightTypeGenerationConfig.t()
            | nil,
          :name => String.t() | nil,
          :revisionId => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:displayName)
  field(:etag)

  field(:insightTypeGenerationConfig,
    as: GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1InsightTypeGenerationConfig
  )

  field(:name)
  field(:revisionId)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1InsightTypeConfig do
  def decode(value, options) do
    GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1InsightTypeConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1InsightTypeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end