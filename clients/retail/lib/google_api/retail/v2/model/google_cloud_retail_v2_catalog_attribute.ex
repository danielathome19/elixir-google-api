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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CatalogAttribute do
  @moduledoc """
  Catalog level attribute config for an attribute. For example, if customers want to enable/disable facet for a specific attribute.

  ## Attributes

  *   `dynamicFacetableOption` (*type:* `String.t`, *default:* `nil`) - If DYNAMIC_FACETABLE_ENABLED, attribute values are available for dynamic facet. Could only be DYNAMIC_FACETABLE_DISABLED if CatalogAttribute.indexable_option is INDEXABLE_DISABLED. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `inUse` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether this attribute has been used by any products. `True` if at least one Product is using this attribute in Product.attributes. Otherwise, this field is `False`. CatalogAttribute can be pre-loaded by using CatalogService.AddCatalogAttribute, CatalogService.ImportCatalogAttributes, or CatalogService.UpdateAttributesConfig APIs. This field is `False` for pre-loaded CatalogAttributes. Only pre-loaded CatalogAttributes that are neither in use by products nor predefined can be deleted. CatalogAttributes that are either in use by products or are predefined cannot be deleted; however, their configuration properties will reset to default values upon removal request. After catalog changes, it takes about 10 minutes for this field to update.
  *   `indexableOption` (*type:* `String.t`, *default:* `nil`) - When AttributesConfig.attribute_config_level is CATALOG_LEVEL_ATTRIBUTE_CONFIG, if INDEXABLE_ENABLED attribute values are indexed so that it can be filtered, faceted, or boosted in SearchService.Search.
  *   `key` (*type:* `String.t`, *default:* `nil`) - Required. Attribute name. For example: `color`, `brands`, `attributes.custom_attribute`, such as `attributes.xyz`. To be indexable, the attribute name can contain only alpha-numeric characters and underscores. For example, an attribute named `attributes.abc_xyz` can be indexed, but an attribute named `attributes.abc-xyz` cannot be indexed.
  *   `searchableOption` (*type:* `String.t`, *default:* `nil`) - When AttributesConfig.attribute_config_level is CATALOG_LEVEL_ATTRIBUTE_CONFIG, if SEARCHABLE_ENABLED, attribute values are searchable by text queries in SearchService.Search. If SEARCHABLE_ENABLED but attribute type is numerical, attribute values will not be searchable by text queries in SearchService.Search, as there are no text values associated to numerical attributes.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. The type of this attribute. This is derived from the attribute in Product.attributes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dynamicFacetableOption => String.t() | nil,
          :inUse => boolean() | nil,
          :indexableOption => String.t() | nil,
          :key => String.t() | nil,
          :searchableOption => String.t() | nil,
          :type => String.t() | nil
        }

  field(:dynamicFacetableOption)
  field(:inUse)
  field(:indexableOption)
  field(:key)
  field(:searchableOption)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CatalogAttribute do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CatalogAttribute.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CatalogAttribute do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end