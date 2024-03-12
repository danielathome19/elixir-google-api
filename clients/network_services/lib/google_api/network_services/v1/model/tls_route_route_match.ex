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

defmodule GoogleApi.NetworkServices.V1.Model.TlsRouteRouteMatch do
  @moduledoc """
  RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "AND"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.

  ## Attributes

  *   `alpn` (*type:* `list(String.t)`, *default:* `nil`) - Optional. ALPN (Application-Layer Protocol Negotiation) to match against. Examples: "http/1.1", "h2". At least one of sni_host and alpn is required. Up to 5 alpns across all matches can be set.
  *   `sniHost` (*type:* `list(String.t)`, *default:* `nil`) - Optional. SNI (server name indicator) to match against. SNI will be matched against all wildcard domains, i.e. `www.example.com` will be first matched against `www.example.com`, then `*.example.com`, then `*.com.` Partial wildcards are not supported, and values like *w.example.com are invalid. At least one of sni_host and alpn is required. Up to 5 sni hosts across all matches can be set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alpn => list(String.t()) | nil,
          :sniHost => list(String.t()) | nil
        }

  field(:alpn, type: :list)
  field(:sniHost, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.TlsRouteRouteMatch do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.TlsRouteRouteMatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.TlsRouteRouteMatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
