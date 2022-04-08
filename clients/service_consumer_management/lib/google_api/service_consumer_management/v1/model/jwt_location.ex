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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.JwtLocation do
  @moduledoc """
  Specifies a location to extract JWT from an API request.

  ## Attributes

  *   `cookie` (*type:* `String.t`, *default:* `nil`) - Specifies cookie name to extract JWT token.
  *   `header` (*type:* `String.t`, *default:* `nil`) - Specifies HTTP header name to extract JWT token.
  *   `query` (*type:* `String.t`, *default:* `nil`) - Specifies URL query parameter name to extract JWT token.
  *   `valuePrefix` (*type:* `String.t`, *default:* `nil`) - The value prefix. The value format is "value_prefix{token}" Only applies to "in" header type. Must be empty for "in" query type. If not empty, the header value has to match (case sensitive) this prefix. If not matched, JWT will not be extracted. If matched, JWT will be extracted after the prefix is removed. For example, for "Authorization: Bearer {JWT}", value_prefix="Bearer " with a space at the end.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cookie => String.t() | nil,
          :header => String.t() | nil,
          :query => String.t() | nil,
          :valuePrefix => String.t() | nil
        }

  field(:cookie)
  field(:header)
  field(:query)
  field(:valuePrefix)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.JwtLocation do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.JwtLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.JwtLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
