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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Product do
  @moduledoc """
  Product captures all metadata information of items to be recommended or searched.

  ## Attributes

  *   `uri` (*type:* `String.t`, *default:* `nil`) - Canonical URL directly linking to the product detail page. It is strongly recommended to provide a valid uri for the product, otherwise the service performance could be significantly degraded. This field must be a UTF-8 encoded string with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [link](https://support.google.com/merchants/answer/6324416). Schema.org property [Offer.url](https://schema.org/url).
  *   `rating` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Rating.t`, *default:* `nil`) - The rating of this product.
  *   `audience` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Audience.t`, *default:* `nil`) - The target group associated with a given audience (e.g. male, veterans, car owners, musicians, etc.) of the product.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Full resource name of the product, such as `projects/*/locations/global/catalogs/default_catalog/branches/default_branch/products/product_id`.
  *   `categories` (*type:* `list(String.t)`, *default:* `nil`) - Product categories. This field is repeated for supporting one product belonging to several parallel categories. Strongly recommended using the full path for better search / recommendation quality. To represent full path of category, use '>' sign to separate different hierarchies. If '>' is part of the category name, replace it with other character(s). For example, if a shoes product belongs to both ["Shoes & Accessories" -> "Shoes"] and ["Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be represented as: "categories": [ "Shoes & Accessories > Shoes", "Sports & Fitness > Athletic Clothing > Shoes" ] Must be set for Type.PRIMARY Product otherwise an INVALID_ARGUMENT error is returned. At most 250 values are allowed per Product unless overridden via pantheon UI. Empty values are not allowed. Each value must be a UTF-8 encoded string with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property google_product_category. Schema.org property [Product.category] (https://schema.org/category). [mc_google_product_category]: https://support.google.com/merchants/answer/6324436
  *   `retrievableFields` (*type:* `String.t`, *default:* `nil`) - Indicates which fields in the Products are returned in SearchResponse. Supported fields for all types: * audience * availability * brands * color_info * conditions * gtin * materials * name * patterns * price_info * rating * sizes * title * uri Supported fields only for Type.PRIMARY and Type.COLLECTION: * categories * description * images Supported fields only for Type.VARIANT: * Only the first image in images To mark attributes as retrievable, include paths of the form "attributes.key" where "key" is the key of a custom attribute, as specified in attributes. For Type.PRIMARY and Type.COLLECTION, the following fields are always returned in SearchResponse by default: * name For Type.VARIANT, the following fields are always returned in by default: * name * color_info The maximum number of paths is 30. Otherwise, an INVALID_ARGUMENT error is returned. Note: Returning more fields in SearchResponse can increase response payload size and serving latency. This field is deprecated. Use the retrievable site-wide control instead.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Product description. This field must be a UTF-8 encoded string with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [description](https://support.google.com/merchants/answer/6324468). Schema.org property [Product.description](https://schema.org/description).
  *   `sizes` (*type:* `list(String.t)`, *default:* `nil`) - The size of the product. To represent different size systems or size types, consider using this format: [[[size_system:]size_type:]size_value]. For example, in "US:MENS:M", "US" represents size system; "MENS" represents size type; "M" represents size value. In "GIRLS:27", size system is empty; "GIRLS" represents size type; "27" represents size value. In "32 inches", both size system and size type are empty, while size value is "32 inches". A maximum of 20 values are allowed per Product. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [size](https://support.google.com/merchants/answer/6324492), [size_type](https://support.google.com/merchants/answer/6324497), and [size_system](https://support.google.com/merchants/answer/6324502). Schema.org property [Product.size](https://schema.org/size).
  *   `variants` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Product.t)`, *default:* `nil`) - Output only. Product variants grouped together on primary product which share similar product attributes. It's automatically grouped by primary_product_id for all the product variants. Only populated for Type.PRIMARY Products. Note: This field is OUTPUT_ONLY for ProductService.GetProduct. Do not set this field in API requests.
  *   `promotions` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Promotion.t)`, *default:* `nil`) - The promotions applied to the product. A maximum of 10 values are allowed per Product. Only Promotion.promotion_id will be used, other fields will be ignored if set.
  *   `materials` (*type:* `list(String.t)`, *default:* `nil`) - The material of the product. For example, "leather", "wooden". A maximum of 20 values are allowed. Each value must be a UTF-8 encoded string with a length limit of 200 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [material](https://support.google.com/merchants/answer/6324410). Schema.org property [Product.material](https://schema.org/material).
  *   `primaryProductId` (*type:* `String.t`, *default:* `nil`) - Variant group identifier. Must be an id, with the same parent branch with this product. Otherwise, an error is thrown. For Type.PRIMARY Products, this field can only be empty or set to the same value as id. For VARIANT Products, this field cannot be empty. A maximum of 2,000 products are allowed to share the same Type.PRIMARY Product. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [item_group_id](https://support.google.com/merchants/answer/6324507). Schema.org property [Product.inProductGroupWithID](https://schema.org/inProductGroupWithID).
  *   `images` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Image.t)`, *default:* `nil`) - Product images for the product. We highly recommend putting the main image first. A maximum of 300 images are allowed. Corresponding properties: Google Merchant Center property [image_link](https://support.google.com/merchants/answer/6324350). Schema.org property [Product.image](https://schema.org/image).
  *   `collectionMemberIds` (*type:* `list(String.t)`, *default:* `nil`) - The id of the collection members when type is Type.COLLECTION. Non-existent product ids are allowed. The type of the members must be either Type.PRIMARY or Type.VARIANT otherwise an INVALID_ARGUMENT error is thrown. Should not set it for other types. A maximum of 1000 values are allowed. Otherwise, an INVALID_ARGUMENT error is return.
  *   `availableQuantity` (*type:* `integer()`, *default:* `nil`) - The available quantity of the item.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Language of the title/description and other string attributes. Use language tags defined by [BCP 47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). For product prediction, this field is ignored and the model automatically detects the text language. The Product can include text in different languages, but duplicating Products to provide text in multiple languages can result in degraded model performance. For product search this field is in use. It defaults to "en-US" if unset.
  *   `patterns` (*type:* `list(String.t)`, *default:* `nil`) - The pattern or graphic print of the product. For example, "striped", "polka dot", "paisley". A maximum of 20 values are allowed per Product. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [pattern](https://support.google.com/merchants/answer/6324483). Schema.org property [Product.pattern](https://schema.org/pattern).
  *   `brands` (*type:* `list(String.t)`, *default:* `nil`) - The brands of the product. A maximum of 30 brands are allowed unless overridden through the Google Cloud console. Each brand must be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [brand](https://support.google.com/merchants/answer/6324351). Schema.org property [Product.brand](https://schema.org/brand).
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Note that this field is applied in the following ways: * If the Product is already expired when it is uploaded, this product is not indexed for search. * If the Product is not expired when it is uploaded, only the Type.PRIMARY's and Type.COLLECTION's expireTime is respected, and Type.VARIANT's expireTime is not used. In general, we suggest the users to delete the stale products explicitly, instead of using this field to determine staleness. expire_time must be later than available_time and publish_time, otherwise an INVALID_ARGUMENT error is thrown. Corresponding properties: Google Merchant Center property [expiration_date](https://support.google.com/merchants/answer/6324499).
  *   `gtin` (*type:* `String.t`, *default:* `nil`) - The Global Trade Item Number (GTIN) of the product. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. This field must be a Unigram. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [gtin](https://support.google.com/merchants/answer/6324461). Schema.org property [Product.isbn](https://schema.org/isbn), [Product.gtin8](https://schema.org/gtin8), [Product.gtin12](https://schema.org/gtin12), [Product.gtin13](https://schema.org/gtin13), or [Product.gtin14](https://schema.org/gtin14). If the value is not a valid GTIN, an INVALID_ARGUMENT error is returned.
  *   `availableTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp when this Product becomes available for SearchService.Search. Note that this is only applicable to Type.PRIMARY and Type.COLLECTION, and ignored for Type.VARIANT.
  *   `attributes` (*type:* `%{optional(String.t) => GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute.t}`, *default:* `nil`) - Highly encouraged. Extra product attributes to be included. For example, for products, this could include the store name, vendor, style, color, etc. These are very strong signals for recommendation model, thus we highly recommend providing the attributes here. Features that can take on one of a limited number of possible values. Two types of features can be set are: Textual features. some examples would be the brand/maker of a product, or country of a customer. Numerical features. Some examples would be the height/weight of a product, or age of a customer. For example: `{ "vendor": {"text": ["vendor123", "vendor456"]}, "lengths_cm": {"numbers":[2.3, 15.4]}, "heights_cm": {"numbers":[8.1, 6.4]} }`. This field needs to pass all below criteria, otherwise an INVALID_ARGUMENT error is returned: * Max entries count: 200. * The key must be a UTF-8 encoded string with a length limit of 128 characters. * For indexable attribute, the key must match the pattern: `a-zA-Z0-9*`. For example, `key0LikeThis` or `KEY_1_LIKE_THIS`. * For text attributes, at most 400 values are allowed. Empty values are not allowed. Each value must be a non-empty UTF-8 encoded string with a length limit of 256 characters. * For number attributes, at most 400 values are allowed.
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - Custom tags associated with the product. At most 250 values are allowed per Product. This value must be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. This tag can be used for filtering recommendation results by passing the tag as part of the PredictRequest.filter. Corresponding properties: Google Merchant Center property [custom_label_0–4](https://support.google.com/merchants/answer/6324473).
  *   `conditions` (*type:* `list(String.t)`, *default:* `nil`) - The condition of the product. Strongly encouraged to use the standard values: "new", "refurbished", "used". A maximum of 1 value is allowed per Product. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [condition](https://support.google.com/merchants/answer/6324469). Schema.org property [Offer.itemCondition](https://schema.org/itemCondition).
  *   `ttl` (*type:* `String.t`, *default:* `nil`) - Input only. The TTL (time to live) of the product. Note that this is only applicable to Type.PRIMARY and Type.COLLECTION, and ignored for Type.VARIANT. In general, we suggest the users to delete the stale products explicitly, instead of using this field to determine staleness. If it is set, it must be a non-negative value, and expire_time is set as current timestamp plus ttl. The derived expire_time is returned in the output and ttl is left blank when retrieving the Product. If it is set, the product is not available for SearchService.Search after current timestamp plus ttl. However, the product can still be retrieved by ProductService.GetProduct and ProductService.ListProducts.
  *   `priceInfo` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PriceInfo.t`, *default:* `nil`) - Product price and cost information. Corresponding properties: Google Merchant Center property [price](https://support.google.com/merchants/answer/6324371).
  *   `localInventories` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2LocalInventory.t)`, *default:* `nil`) - Output only. A list of local inventories specific to different places. This field can be managed by ProductService.AddLocalInventories and ProductService.RemoveLocalInventories APIs if fine-grained, high-volume updates are necessary.
  *   `publishTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp when the product is published by the retailer for the first time, which indicates the freshness of the products. Note that this field is different from available_time, given it purely describes product freshness regardless of when it is available on search and recommendation.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Immutable. The type of the product. Default to Catalog.product_level_config.ingestion_product_type if unset.
  *   `colorInfo` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ColorInfo.t`, *default:* `nil`) - The color of the product. Corresponding properties: Google Merchant Center property [color](https://support.google.com/merchants/answer/6324487). Schema.org property [Product.color](https://schema.org/color).
  *   `fulfillmentInfo` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2FulfillmentInfo.t)`, *default:* `nil`) - Fulfillment information, such as the store IDs for in-store pickup or region IDs for different shipping methods. All the elements must have distinct FulfillmentInfo.type. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `availability` (*type:* `String.t`, *default:* `nil`) - The online availability of the Product. Default to Availability.IN_STOCK. Corresponding properties: Google Merchant Center property [availability](https://support.google.com/merchants/answer/6324448). Schema.org property [Offer.availability](https://schema.org/availability).
  *   `id` (*type:* `String.t`, *default:* `nil`) - Immutable. Product identifier, which is the final component of name. For example, this field is "id_1", if name is `projects/*/locations/global/catalogs/default_catalog/branches/default_branch/products/id_1`. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [id](https://support.google.com/merchants/answer/6324405). Schema.org property [Product.sku](https://schema.org/sku).
  *   `title` (*type:* `String.t`, *default:* `nil`) - Required. Product title. This field must be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Corresponding properties: Google Merchant Center property [title](https://support.google.com/merchants/answer/6324415). Schema.org property [Product.name](https://schema.org/name).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :uri => String.t() | nil,
          :rating => GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Rating.t() | nil,
          :audience => GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Audience.t() | nil,
          :name => String.t() | nil,
          :categories => list(String.t()) | nil,
          :retrievableFields => String.t() | nil,
          :description => String.t() | nil,
          :sizes => list(String.t()) | nil,
          :variants => list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Product.t()) | nil,
          :promotions => list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Promotion.t()) | nil,
          :materials => list(String.t()) | nil,
          :primaryProductId => String.t() | nil,
          :images => list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Image.t()) | nil,
          :collectionMemberIds => list(String.t()) | nil,
          :availableQuantity => integer() | nil,
          :languageCode => String.t() | nil,
          :patterns => list(String.t()) | nil,
          :brands => list(String.t()) | nil,
          :expireTime => DateTime.t() | nil,
          :gtin => String.t() | nil,
          :availableTime => DateTime.t() | nil,
          :attributes =>
            %{
              optional(String.t()) =>
                GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute.t()
            }
            | nil,
          :tags => list(String.t()) | nil,
          :conditions => list(String.t()) | nil,
          :ttl => String.t() | nil,
          :priceInfo => GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PriceInfo.t() | nil,
          :localInventories =>
            list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2LocalInventory.t()) | nil,
          :publishTime => DateTime.t() | nil,
          :type => String.t() | nil,
          :colorInfo => GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ColorInfo.t() | nil,
          :fulfillmentInfo =>
            list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2FulfillmentInfo.t()) | nil,
          :availability => String.t() | nil,
          :id => String.t() | nil,
          :title => String.t() | nil
        }

  field(:uri)
  field(:rating, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Rating)
  field(:audience, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Audience)
  field(:name)
  field(:categories, type: :list)
  field(:retrievableFields)
  field(:description)
  field(:sizes, type: :list)
  field(:variants, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Product, type: :list)
  field(:promotions, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Promotion, type: :list)
  field(:materials, type: :list)
  field(:primaryProductId)
  field(:images, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Image, type: :list)
  field(:collectionMemberIds, type: :list)
  field(:availableQuantity)
  field(:languageCode)
  field(:patterns, type: :list)
  field(:brands, type: :list)
  field(:expireTime, as: DateTime)
  field(:gtin)
  field(:availableTime, as: DateTime)
  field(:attributes, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute, type: :map)
  field(:tags, type: :list)
  field(:conditions, type: :list)
  field(:ttl)
  field(:priceInfo, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PriceInfo)

  field(:localInventories,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2LocalInventory,
    type: :list
  )

  field(:publishTime, as: DateTime)
  field(:type)
  field(:colorInfo, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ColorInfo)

  field(:fulfillmentInfo,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2FulfillmentInfo,
    type: :list
  )

  field(:availability)
  field(:id)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Product do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Product.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
