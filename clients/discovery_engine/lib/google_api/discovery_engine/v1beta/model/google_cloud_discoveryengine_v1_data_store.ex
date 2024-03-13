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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DataStore do
  @moduledoc """
  DataStore captures global settings and configs at the DataStore level.

  ## Attributes

  *   `contentConfig` (*type:* `String.t`, *default:* `nil`) - Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp the DataStore was created at.
  *   `defaultSchemaId` (*type:* `String.t`, *default:* `nil`) - Output only. The id of the default Schema asscociated to this data store.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The data store display name. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `documentProcessingConfig` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DocumentProcessingConfig.t`, *default:* `nil`) - Configuration for Document understanding and enrichment.
  *   `industryVertical` (*type:* `String.t`, *default:* `nil`) - Immutable. The industry vertical that the data store registers.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The full resource name of the data store. Format: `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  *   `solutionTypes` (*type:* `list(String.t)`, *default:* `nil`) - The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`. * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other solutions cannot be enrolled.
  *   `startingSchema` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1Schema.t`, *default:* `nil`) - The start schema to use for this DataStore when provisioning it. If unset, a default vertical specialized schema will be used. This field is only used by CreateDataStore API, and will be ignored if used in other APIs. This field will be omitted from all API responses including CreateDataStore API. To retrieve a schema of a DataStore, use SchemaService.GetSchema API instead. The provided schema will be validated against certain rules on schema. Learn more from [this doc](https://cloud.google.com/generative-ai-app-builder/docs/provide-schema).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentConfig => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :defaultSchemaId => String.t() | nil,
          :displayName => String.t() | nil,
          :documentProcessingConfig =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DocumentProcessingConfig.t()
            | nil,
          :industryVertical => String.t() | nil,
          :name => String.t() | nil,
          :solutionTypes => list(String.t()) | nil,
          :startingSchema =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1Schema.t() | nil
        }

  field(:contentConfig)
  field(:createTime, as: DateTime)
  field(:defaultSchemaId)
  field(:displayName)

  field(:documentProcessingConfig,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DocumentProcessingConfig
  )

  field(:industryVertical)
  field(:name)
  field(:solutionTypes, type: :list)

  field(:startingSchema,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1Schema
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DataStore do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DataStore.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DataStore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
