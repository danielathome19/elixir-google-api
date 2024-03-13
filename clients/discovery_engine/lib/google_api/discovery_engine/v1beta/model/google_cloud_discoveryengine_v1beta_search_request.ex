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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequest do
  @moduledoc """
  Request message for SearchService.Search method.

  ## Attributes

  *   `boostSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec.t`, *default:* `nil`) - Boost specification to boost certain documents. For more information on boosting, see [Boosting](https://cloud.google.com/retail/docs/boosting#boost)
  *   `branch` (*type:* `String.t`, *default:* `nil`) - The branch resource name, such as `projects/*/locations/global/collections/default_collection/dataStores/default_data_store/branches/0`. Use `default_branch` as the branch ID or leave this field empty, to search documents under the default branch.
  *   `canonicalFilter` (*type:* `String.t`, *default:* `nil`) - The default filter that is applied when a user performs a search without checking any filters on the search page. The filter applied to every search request when quality improvement such as query expansion is needed. In the case a query does not have a sufficient amount of results this filter will be used to determine whether or not to enable the query expansion flow. The original filter will still be used for the query expanded search. This field is strongly recommended to achieve high search quality. For more information about filter syntax, see SearchRequest.filter.
  *   `contentSearchSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec.t`, *default:* `nil`) - A specification for configuring the behavior of content search.
  *   `dataStoreSpecs` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec.t)`, *default:* `nil`) - A list of data store specs to apply on a search call.
  *   `embeddingSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec.t`, *default:* `nil`) - Uses the provided embedding to do additional semantic document retrieval. The retrieval is based on the dot product of SearchRequest.EmbeddingSpec.EmbeddingVector.vector and the document embedding that is provided in SearchRequest.EmbeddingSpec.EmbeddingVector.field_path. If SearchRequest.EmbeddingSpec.EmbeddingVector.field_path is not provided, it will use ServingConfig.EmbeddingConfig.field_path.
  *   `facetSpecs` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec.t)`, *default:* `nil`) - Facet specifications for faceted search. If empty, no facets are returned. A maximum of 100 values are allowed. Otherwise, an `INVALID_ARGUMENT` error is returned.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - The filter syntax consists of an expression language for constructing a predicate from one or more fields of the documents being filtered. Filter expression is case-sensitive. If this field is unrecognizable, an `INVALID_ARGUMENT` is returned. Filtering in Vertex AI Search is done by mapping the LHS filter key to a key property defined in the Vertex AI Search backend -- this mapping is defined by the customer in their schema. For example a media customer might have a field 'name' in their schema. In this case the filter would look like this: filter --> name:'ANY("king kong")' For more information about filtering including syntax and filter operators, see [Filter](https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
  *   `imageQuery` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery.t`, *default:* `nil`) - Raw image query.
  *   `offset` (*type:* `integer()`, *default:* `nil`) - A 0-indexed integer that specifies the current offset (that is, starting result location, amongst the Documents deemed by the API as relevant) in search results. This field is only considered if page_token is unset. If this field is negative, an `INVALID_ARGUMENT` is returned.
  *   `orderBy` (*type:* `String.t`, *default:* `nil`) - The order in which documents are returned. Documents can be ordered by a field in an Document object. Leave it unset if ordered by relevance. `order_by` expression is case-sensitive. For more information on ordering, see [Ordering](https://cloud.google.com/retail/docs/filter-and-order#order) If this field is unrecognizable, an `INVALID_ARGUMENT` is returned.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Maximum number of Documents to return. If unspecified, defaults to a reasonable value. The maximum allowed value is 100. Values above 100 are coerced to 100. If this field is negative, an `INVALID_ARGUMENT` is returned.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A page token received from a previous SearchService.Search call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to SearchService.Search must match the call that provided the page token. Otherwise, an `INVALID_ARGUMENT` error is returned.
  *   `params` (*type:* `map()`, *default:* `nil`) - Additional search parameters. For public website search only, supported values are: * `user_country_code`: string. Default empty. If set to non-empty, results are restricted or boosted based on the location provided. Example: user_country_code: "au" For available codes see [Country Codes](https://developers.google.com/custom-search/docs/json_api_reference#countryCodes) * `search_type`: double. Default empty. Enables non-webpage searching depending on the value. The only valid non-default value is 1, which enables image searching. Example: search_type: 1
  *   `query` (*type:* `String.t`, *default:* `nil`) - Raw search query.
  *   `queryExpansionSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec.t`, *default:* `nil`) - The query expansion specification that specifies the conditions under which query expansion occurs.
  *   `rankingExpression` (*type:* `String.t`, *default:* `nil`) - The ranking expression controls the customized ranking on retrieval documents. This overrides ServingConfig.ranking_expression. The ranking expression is a single function or multiple functions that are joint by "+". * ranking_expression = function, { " + ", function }; Supported functions: * double * relevance_score * double * dotProduct(embedding_field_path) Function variables: `relevance_score`: pre-defined keywords, used for measure relevance between query and document. `embedding_field_path`: the document embedding field used with query embedding vector. `dotProduct`: embedding function between embedding_field_path and query embedding vector. Example ranking expression: If document has an embedding field doc_embedding, the ranking expression could be `0.5 * relevance_score + 0.3 * dotProduct(doc_embedding)`.
  *   `safeSearch` (*type:* `boolean()`, *default:* `nil`) - Whether to turn on safe search. This is only supported for website search.
  *   `spellCorrectionSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec.t`, *default:* `nil`) - The spell correction specification that specifies the mode under which spell correction takes effect.
  *   `userInfo` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaUserInfo.t`, *default:* `nil`) - Information about the end user. Highly recommended for analytics. UserInfo.user_agent is used to deduce `device_type` for analytics.
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - The user labels applied to a resource must meet the following requirements: * Each resource can have multiple labels, up to a maximum of 64. * Each label must be a key-value pair. * Keys have a minimum length of 1 character and a maximum length of 63 characters and cannot be empty. Values can be empty and have a maximum length of 63 characters. * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. All characters must use UTF-8 encoding, and international characters are allowed. * The key portion of a label must be unique. However, you can use the same key with multiple resources. * Keys must start with a lowercase letter or international character. See [Google Cloud Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements) for more details.
  *   `userPseudoId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for tracking visitors. For example, this could be implemented with an HTTP cookie, which should be able to uniquely identify a visitor on a single device. This unique identifier should not change if the visitor logs in or out of the website. This field should NOT have a fixed value such as `unknown_visitor`. This should be the same identifier as UserEvent.user_pseudo_id and CompleteQueryRequest.user_pseudo_id The field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boostSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec.t()
            | nil,
          :branch => String.t() | nil,
          :canonicalFilter => String.t() | nil,
          :contentSearchSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec.t()
            | nil,
          :dataStoreSpecs =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec.t()
            )
            | nil,
          :embeddingSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec.t()
            | nil,
          :facetSpecs =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec.t()
            )
            | nil,
          :filter => String.t() | nil,
          :imageQuery =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery.t()
            | nil,
          :offset => integer() | nil,
          :orderBy => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :params => map() | nil,
          :query => String.t() | nil,
          :queryExpansionSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec.t()
            | nil,
          :rankingExpression => String.t() | nil,
          :safeSearch => boolean() | nil,
          :spellCorrectionSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec.t()
            | nil,
          :userInfo =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaUserInfo.t()
            | nil,
          :userLabels => map() | nil,
          :userPseudoId => String.t() | nil
        }

  field(:boostSpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec
  )

  field(:branch)
  field(:canonicalFilter)

  field(:contentSearchSpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec
  )

  field(:dataStoreSpecs,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec,
    type: :list
  )

  field(:embeddingSpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec
  )

  field(:facetSpecs,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec,
    type: :list
  )

  field(:filter)

  field(:imageQuery,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery
  )

  field(:offset)
  field(:orderBy)
  field(:pageSize)
  field(:pageToken)
  field(:params, type: :map)
  field(:query)

  field(:queryExpansionSpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec
  )

  field(:rankingExpression)
  field(:safeSearch)

  field(:spellCorrectionSpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec
  )

  field(:userInfo,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaUserInfo
  )

  field(:userLabels, type: :map)
  field(:userPseudoId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequest do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
