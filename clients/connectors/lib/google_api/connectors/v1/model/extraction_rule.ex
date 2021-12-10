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

defmodule GoogleApi.Connectors.V1.Model.ExtractionRule do
  @moduledoc """
  Extraction Rule.

  ## Attributes

  *   `extractionRegex` (*type:* `String.t`, *default:* `nil`) - Regex used to extract backend details from source. If empty, whole source value will be used.
  *   `source` (*type:* `GoogleApi.Connectors.V1.Model.Source.t`, *default:* `nil`) - Source on which the rule is applied.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :extractionRegex => String.t() | nil,
          :source => GoogleApi.Connectors.V1.Model.Source.t() | nil
        }

  field(:extractionRegex)
  field(:source, as: GoogleApi.Connectors.V1.Model.Source)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.ExtractionRule do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.ExtractionRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.ExtractionRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
