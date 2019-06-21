# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Model.DatafeedStatusExample do
  @moduledoc """
  An example occurrence for a particular error.

  ## Attributes

  - itemId (String.t): The ID of the example item. Defaults to `nil`.
  - lineNumber (String.t): Line number in the data feed where the example is found. Defaults to `nil`.
  - value (String.t): The problematic value. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :itemId => String.t(),
          :lineNumber => String.t(),
          :value => String.t()
        }

  field(:itemId)
  field(:lineNumber)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.DatafeedStatusExample do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.DatafeedStatusExample.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.DatafeedStatusExample do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
