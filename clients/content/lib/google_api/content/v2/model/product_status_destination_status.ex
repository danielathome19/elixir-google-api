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

defmodule GoogleApi.Content.V2.Model.ProductStatusDestinationStatus do
  @moduledoc """


  ## Attributes

  - approvalPending (boolean()): Whether the approval status might change due to further processing. Defaults to `nil`.
  - approvalStatus (String.t): The destination's approval status. Defaults to `nil`.
  - destination (String.t): The name of the destination Defaults to `nil`.
  - intention (String.t): Provided for backward compatibility only. Always set to "required". Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :approvalPending => boolean(),
          :approvalStatus => String.t(),
          :destination => String.t(),
          :intention => String.t()
        }

  field(:approvalPending)
  field(:approvalStatus)
  field(:destination)
  field(:intention)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.ProductStatusDestinationStatus do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.ProductStatusDestinationStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.ProductStatusDestinationStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
