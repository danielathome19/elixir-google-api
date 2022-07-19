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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponseCompletionResult do
  @moduledoc """
  Resource that represents completion results.

  ## Attributes

  *   `attributes` (*type:* `%{optional(String.t) => GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute.t}`, *default:* `nil`) - Custom attributes for the suggestion term. * For "user-data", the attributes are additional custom attributes ingested through BigQuery. * For "cloud-retail", the attributes are product attributes generated by Cloud Retail. It requires UserEvent.product_details is imported properly.
  *   `suggestion` (*type:* `String.t`, *default:* `nil`) - The suggestion for the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes =>
            %{
              optional(String.t()) =>
                GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute.t()
            }
            | nil,
          :suggestion => String.t() | nil
        }

  field(:attributes, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CustomAttribute, type: :map)
  field(:suggestion)
end

defimpl Poison.Decoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponseCompletionResult do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponseCompletionResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompleteQueryResponseCompletionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
