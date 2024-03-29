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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Segments do
  @moduledoc """
  Segment only fields.

  ## Attributes

  *   `productBiddingCategoryLevel3` (*type:* `String.t`, *default:* `nil`) - Bidding category (level 3) of the product.
  *   `productTypeL2` (*type:* `String.t`, *default:* `nil`) - Type (level 2) of the product.
  *   `productCondition` (*type:* `String.t`, *default:* `nil`) - Condition of the product.
  *   `productBiddingCategoryLevel1` (*type:* `String.t`, *default:* `nil`) - Bidding category (level 1) of the product.
  *   `productCustomAttribute3` (*type:* `String.t`, *default:* `nil`) - Custom attribute 3 of the product.
  *   `productTypeL1` (*type:* `String.t`, *default:* `nil`) - Type (level 1) of the product.
  *   `productSoldTitle` (*type:* `String.t`, *default:* `nil`) - Title of the product sold.
  *   `productTypeL3` (*type:* `String.t`, *default:* `nil`) - Type (level 3) of the product.
  *   `productSoldBiddingCategoryLevel4` (*type:* `String.t`, *default:* `nil`) - Bidding category (level 4) of the product sold.
  *   `productSoldTypeL2` (*type:* `String.t`, *default:* `nil`) - Type (level 2) of the product sold.
  *   `productSoldTypeL1` (*type:* `String.t`, *default:* `nil`) - Type (level 1) of the product sold.
  *   `productBiddingCategoryLevel4` (*type:* `String.t`, *default:* `nil`) - Bidding category (level 4) of the product.
  *   `date` (*type:* `String.t`, *default:* `nil`) - Date to which metrics apply. yyyy-MM-dd format, for example, 2018-04-17.
  *   `productBiddingCategoryLevel5` (*type:* `String.t`, *default:* `nil`) - Bidding category (level 5) of the product.
  *   `productBiddingCategoryLevel2` (*type:* `String.t`, *default:* `nil`) - Bidding category (level 2) of the product.
  *   `productCustomAttribute4` (*type:* `String.t`, *default:* `nil`) - Custom attribute 4 of the product.
  *   `dayOfWeek` (*type:* `String.t`, *default:* `nil`) - Day of the week, for example, MONDAY.
  *   `productSoldTypeL3` (*type:* `String.t`, *default:* `nil`) - Type (level 3) of the product sold.
  *   `conversionActionCategory` (*type:* `String.t`, *default:* `nil`) - Conversion action category.
  *   `quarter` (*type:* `String.t`, *default:* `nil`) - Quarter as represented by the date of the first day of a quarter. Uses the calendar year for quarters, for example, the second quarter of 2018 starts on 2018-04-01. Formatted as yyyy-MM-dd.
  *   `productStoreId` (*type:* `String.t`, *default:* `nil`) - Store ID of the product.
  *   `keyword` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Keyword.t`, *default:* `nil`) - Keyword criterion.
  *   `productSoldTypeL4` (*type:* `String.t`, *default:* `nil`) - Type (level 4) of the product sold.
  *   `productCustomAttribute1` (*type:* `String.t`, *default:* `nil`) - Custom attribute 1 of the product.
  *   `productSoldCustomAttribute2` (*type:* `String.t`, *default:* `nil`) - Custom attribute 2 of the product sold.
  *   `conversionAction` (*type:* `String.t`, *default:* `nil`) - Resource name of the conversion action.
  *   `productBrand` (*type:* `String.t`, *default:* `nil`) - Brand of the product.
  *   `productCustomAttribute2` (*type:* `String.t`, *default:* `nil`) - Custom attribute 2 of the product.
  *   `productTitle` (*type:* `String.t`, *default:* `nil`) - Title of the product.
  *   `productSoldBiddingCategoryLevel5` (*type:* `String.t`, *default:* `nil`) - Bidding category (level 5) of the product sold.
  *   `productChannelExclusivity` (*type:* `String.t`, *default:* `nil`) - Channel exclusivity of the product.
  *   `productSoldCustomAttribute3` (*type:* `String.t`, *default:* `nil`) - Custom attribute 3 of the product sold.
  *   `productSoldBiddingCategoryLevel1` (*type:* `String.t`, *default:* `nil`) - Bidding category (level 1) of the product sold.
  *   `productCountry` (*type:* `String.t`, *default:* `nil`) - Resource name of the geo target constant for the country of sale of the product.
  *   `productSoldItemId` (*type:* `String.t`, *default:* `nil`) - Item ID of the product sold.
  *   `productSoldCustomAttribute0` (*type:* `String.t`, *default:* `nil`) - Custom attribute 0 of the product sold.
  *   `conversionActionName` (*type:* `String.t`, *default:* `nil`) - Conversion action name.
  *   `productSoldBiddingCategoryLevel2` (*type:* `String.t`, *default:* `nil`) - Bidding category (level 2) of the product sold.
  *   `productSoldCondition` (*type:* `String.t`, *default:* `nil`) - Condition of the product sold.
  *   `productChannel` (*type:* `String.t`, *default:* `nil`) - Channel of the product.
  *   `productLanguage` (*type:* `String.t`, *default:* `nil`) - Resource name of the language constant for the language of the product.
  *   `productSoldBiddingCategoryLevel3` (*type:* `String.t`, *default:* `nil`) - Bidding category (level 3) of the product sold.
  *   `productSoldCustomAttribute1` (*type:* `String.t`, *default:* `nil`) - Custom attribute 1 of the product sold.
  *   `year` (*type:* `integer()`, *default:* `nil`) - Year, formatted as yyyy.
  *   `productItemId` (*type:* `String.t`, *default:* `nil`) - Item ID of the product.
  *   `productSoldTypeL5` (*type:* `String.t`, *default:* `nil`) - Type (level 5) of the product sold.
  *   `month` (*type:* `String.t`, *default:* `nil`) - Month as represented by the date of the first day of a month. Formatted as yyyy-MM-dd.
  *   `productSoldCustomAttribute4` (*type:* `String.t`, *default:* `nil`) - Custom attribute 4 of the product sold.
  *   `productCustomAttribute0` (*type:* `String.t`, *default:* `nil`) - Custom attribute 0 of the product.
  *   `productTypeL4` (*type:* `String.t`, *default:* `nil`) - Type (level 4) of the product.
  *   `assetInteractionTarget` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_AssetInteractionTarget.t`, *default:* `nil`) - Only used with CustomerAsset, CampaignAsset and AdGroupAsset metrics. Indicates whether the interaction metrics occurred on the asset itself or a different asset or ad unit. Interactions (for example, clicks) are counted across all the parts of the served ad (for example, Ad itself and other components like Sitelinks) when they are served together. When interaction_on_this_asset is true, it means the interactions are on this specific asset and when interaction_on_this_asset is false, it means the interactions is not on this specific asset but on other parts of the served ad this asset is served with.
  *   `rawEventConversionDimensions` (*type:* `list(GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value.t)`, *default:* `nil`) - The raw event conversion dimensions.
  *   `device` (*type:* `String.t`, *default:* `nil`) - Device to which metrics apply.
  *   `week` (*type:* `String.t`, *default:* `nil`) - Week as defined as Monday through Sunday, and represented by the date of Monday. Formatted as yyyy-MM-dd.
  *   `productTypeL5` (*type:* `String.t`, *default:* `nil`) - Type (level 5) of the product.
  *   `conversionCustomDimensions` (*type:* `list(GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value.t)`, *default:* `nil`) - The conversion custom dimensions.
  *   `adNetworkType` (*type:* `String.t`, *default:* `nil`) - Ad network type.
  *   `productSoldBrand` (*type:* `String.t`, *default:* `nil`) - Brand of the product sold.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :productBiddingCategoryLevel3 => String.t() | nil,
          :productTypeL2 => String.t() | nil,
          :productCondition => String.t() | nil,
          :productBiddingCategoryLevel1 => String.t() | nil,
          :productCustomAttribute3 => String.t() | nil,
          :productTypeL1 => String.t() | nil,
          :productSoldTitle => String.t() | nil,
          :productTypeL3 => String.t() | nil,
          :productSoldBiddingCategoryLevel4 => String.t() | nil,
          :productSoldTypeL2 => String.t() | nil,
          :productSoldTypeL1 => String.t() | nil,
          :productBiddingCategoryLevel4 => String.t() | nil,
          :date => String.t() | nil,
          :productBiddingCategoryLevel5 => String.t() | nil,
          :productBiddingCategoryLevel2 => String.t() | nil,
          :productCustomAttribute4 => String.t() | nil,
          :dayOfWeek => String.t() | nil,
          :productSoldTypeL3 => String.t() | nil,
          :conversionActionCategory => String.t() | nil,
          :quarter => String.t() | nil,
          :productStoreId => String.t() | nil,
          :keyword =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Keyword.t() | nil,
          :productSoldTypeL4 => String.t() | nil,
          :productCustomAttribute1 => String.t() | nil,
          :productSoldCustomAttribute2 => String.t() | nil,
          :conversionAction => String.t() | nil,
          :productBrand => String.t() | nil,
          :productCustomAttribute2 => String.t() | nil,
          :productTitle => String.t() | nil,
          :productSoldBiddingCategoryLevel5 => String.t() | nil,
          :productChannelExclusivity => String.t() | nil,
          :productSoldCustomAttribute3 => String.t() | nil,
          :productSoldBiddingCategoryLevel1 => String.t() | nil,
          :productCountry => String.t() | nil,
          :productSoldItemId => String.t() | nil,
          :productSoldCustomAttribute0 => String.t() | nil,
          :conversionActionName => String.t() | nil,
          :productSoldBiddingCategoryLevel2 => String.t() | nil,
          :productSoldCondition => String.t() | nil,
          :productChannel => String.t() | nil,
          :productLanguage => String.t() | nil,
          :productSoldBiddingCategoryLevel3 => String.t() | nil,
          :productSoldCustomAttribute1 => String.t() | nil,
          :year => integer() | nil,
          :productItemId => String.t() | nil,
          :productSoldTypeL5 => String.t() | nil,
          :month => String.t() | nil,
          :productSoldCustomAttribute4 => String.t() | nil,
          :productCustomAttribute0 => String.t() | nil,
          :productTypeL4 => String.t() | nil,
          :assetInteractionTarget =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_AssetInteractionTarget.t()
            | nil,
          :rawEventConversionDimensions =>
            list(GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value.t()) | nil,
          :device => String.t() | nil,
          :week => String.t() | nil,
          :productTypeL5 => String.t() | nil,
          :conversionCustomDimensions =>
            list(GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value.t()) | nil,
          :adNetworkType => String.t() | nil,
          :productSoldBrand => String.t() | nil
        }

  field(:productBiddingCategoryLevel3)
  field(:productTypeL2)
  field(:productCondition)
  field(:productBiddingCategoryLevel1)
  field(:productCustomAttribute3)
  field(:productTypeL1)
  field(:productSoldTitle)
  field(:productTypeL3)
  field(:productSoldBiddingCategoryLevel4)
  field(:productSoldTypeL2)
  field(:productSoldTypeL1)
  field(:productBiddingCategoryLevel4)
  field(:date)
  field(:productBiddingCategoryLevel5)
  field(:productBiddingCategoryLevel2)
  field(:productCustomAttribute4)
  field(:dayOfWeek)
  field(:productSoldTypeL3)
  field(:conversionActionCategory)
  field(:quarter)
  field(:productStoreId)
  field(:keyword, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Keyword)
  field(:productSoldTypeL4)
  field(:productCustomAttribute1)
  field(:productSoldCustomAttribute2)
  field(:conversionAction)
  field(:productBrand)
  field(:productCustomAttribute2)
  field(:productTitle)
  field(:productSoldBiddingCategoryLevel5)
  field(:productChannelExclusivity)
  field(:productSoldCustomAttribute3)
  field(:productSoldBiddingCategoryLevel1)
  field(:productCountry)
  field(:productSoldItemId)
  field(:productSoldCustomAttribute0)
  field(:conversionActionName)
  field(:productSoldBiddingCategoryLevel2)
  field(:productSoldCondition)
  field(:productChannel)
  field(:productLanguage)
  field(:productSoldBiddingCategoryLevel3)
  field(:productSoldCustomAttribute1)
  field(:year)
  field(:productItemId)
  field(:productSoldTypeL5)
  field(:month)
  field(:productSoldCustomAttribute4)
  field(:productCustomAttribute0)
  field(:productTypeL4)

  field(:assetInteractionTarget,
    as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_AssetInteractionTarget
  )

  field(:rawEventConversionDimensions,
    as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value,
    type: :list
  )

  field(:device)
  field(:week)
  field(:productTypeL5)

  field(:conversionCustomDimensions,
    as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value,
    type: :list
  )

  field(:adNetworkType)
  field(:productSoldBrand)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Segments do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Segments.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Segments do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
