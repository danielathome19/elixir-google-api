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

defmodule GoogleApi.BigQuery.V2.Model.GlobalExplanation do
  @moduledoc """
  Global explanations containing the top most important features after training.

  ## Attributes

  *   `classLabel` (*type:* `String.t`, *default:* `nil`) - Class label for this set of global explanations. Will be empty/null for binary logistic and linear regression models. Sorted alphabetically in descending order.
  *   `explanations` (*type:* `list(GoogleApi.BigQuery.V2.Model.Explanation.t)`, *default:* `nil`) - A list of the top global explanations. Sorted by absolute value of attribution in descending order.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :classLabel => String.t() | nil,
          :explanations => list(GoogleApi.BigQuery.V2.Model.Explanation.t()) | nil
        }

  field(:classLabel)
  field(:explanations, as: GoogleApi.BigQuery.V2.Model.Explanation, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.GlobalExplanation do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.GlobalExplanation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.GlobalExplanation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
