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

defmodule GoogleApi.NetworkServices.V1.Model.ExtensionChainExtension do
  @moduledoc """
  A single extension in the chain to execute for the matching request.

  ## Attributes

  *   `authority` (*type:* `String.t`, *default:* `nil`) - Optional. The `:authority` header in the gRPC request sent from Envoy to the extension service. Required for Callout extensions.
  *   `failOpen` (*type:* `boolean()`, *default:* `nil`) - Optional. Determines how the proxy behaves if the call to the extension fails or times out. When set to `TRUE`, request or response processing continues without error. Any subsequent extensions in the extension chain are also executed. When set to `FALSE` or the default setting of `FALSE` is used, one of the following happens: * If response headers have not been delivered to the downstream client, a generic 500 error is returned to the client. The error response can be tailored by configuring a custom error response in the load balancer. * If response headers have been delivered, then the HTTP stream to the downstream client is reset.
  *   `forwardHeaders` (*type:* `list(String.t)`, *default:* `nil`) - Optional. List of the HTTP headers to forward to the extension (from the client or backend). If omitted, all headers are sent. Each element is a string indicating the header name.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name for this extension. The name is logged as part of the HTTP request logs. The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens, and can have a maximum length of 63 characters. Additionally, the first character must be a letter and the last a letter or a number.
  *   `service` (*type:* `String.t`, *default:* `nil`) - Required. The reference to the service that runs the extension. Currently only callout extensions are supported here. To configure a callout extension, `service` must be a fully-qualified reference to a [backend service](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices) in the format: `https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/backendServices/{backendService}` or `https://www.googleapis.com/compute/v1/projects/{project}/global/backendServices/{backendService}`.
  *   `supportedEvents` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A set of events during request or response processing for which this extension is called. This field is required for the `LbTrafficExtension` resource. It's not relevant for the `LbRouteExtension` resource.
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the timeout for each individual message on the stream. The timeout must be between 10-1000 milliseconds. Required for Callout extensions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authority => String.t() | nil,
          :failOpen => boolean() | nil,
          :forwardHeaders => list(String.t()) | nil,
          :name => String.t() | nil,
          :service => String.t() | nil,
          :supportedEvents => list(String.t()) | nil,
          :timeout => String.t() | nil
        }

  field(:authority)
  field(:failOpen)
  field(:forwardHeaders, type: :list)
  field(:name)
  field(:service)
  field(:supportedEvents, type: :list)
  field(:timeout)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.ExtensionChainExtension do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.ExtensionChainExtension.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.ExtensionChainExtension do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
