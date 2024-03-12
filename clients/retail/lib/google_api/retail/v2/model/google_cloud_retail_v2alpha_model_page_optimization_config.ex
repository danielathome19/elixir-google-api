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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaModelPageOptimizationConfig do
  @moduledoc """
  The PageOptimizationConfig for model training. This determines how many panels to optimize for, and which serving configs to consider for each panel. The purpose of this model is to optimize which ServingConfig to show on which panels in way that optimizes the visitors shopping journey.

  ## Attributes

  *   `pageOptimizationEventType` (*type:* `String.t`, *default:* `nil`) - Required. The type of UserEvent this page optimization is shown for. Each page has an associated event type - this will be the corresponding event type for the page that the page optimization model is used on. Supported types: * `add-to-cart`: Products being added to cart. * `detail-page-view`: Products detail page viewed. * `home-page-view`: Homepage viewed * `category-page-view`: Homepage viewed * `shopping-cart-page-view`: User viewing a shopping cart. `home-page-view` only allows models with type `recommended-for-you`. All other page_optimization_event_type allow all Model.types.
  *   `panels` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel.t)`, *default:* `nil`) - Required. A list of panel configurations. Limit = 5.
  *   `restriction` (*type:* `String.t`, *default:* `nil`) - Optional. How to restrict results across panels e.g. can the same ServingConfig be shown on multiple panels at once. If unspecified, default to `UNIQUE_MODEL_RESTRICTION`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pageOptimizationEventType => String.t() | nil,
          :panels =>
            list(
              GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel.t()
            )
            | nil,
          :restriction => String.t() | nil
        }

  field(:pageOptimizationEventType)

  field(:panels,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel,
    type: :list
  )

  field(:restriction)
end

defimpl Poison.Decoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaModelPageOptimizationConfig do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaModelPageOptimizationConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaModelPageOptimizationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
