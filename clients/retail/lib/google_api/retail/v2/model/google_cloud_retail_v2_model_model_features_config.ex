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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ModelModelFeaturesConfig do
  @moduledoc """
  Additional model features config.

  ## Attributes

  *   `frequentlyBoughtTogetherConfig` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig.t`, *default:* `nil`) - Additional configs for frequently-bought-together models.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :frequentlyBoughtTogetherConfig =>
            GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig.t()
            | nil
        }

  field(:frequentlyBoughtTogetherConfig,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfig
  )
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ModelModelFeaturesConfig do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ModelModelFeaturesConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ModelModelFeaturesConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
