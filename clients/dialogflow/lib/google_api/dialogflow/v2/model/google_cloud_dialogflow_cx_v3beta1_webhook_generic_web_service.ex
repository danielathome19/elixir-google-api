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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookGenericWebService do
  @moduledoc """
  Represents configuration for a generic web service.

  ## Attributes

  *   `allowedCaCerts` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store. If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates. N.B. Make sure the HTTPS server certificates are signed with "subject alt name". For instance a certificate can be self-signed using the following command, ``` openssl x509 -req -days 200 -in example.com.csr \\ -signkey example.com.key \\ -out example.com.crt \\ -extfile <(printf "\\nsubjectAltName='DNS:www.example.com'") ```
  *   `httpMethod` (*type:* `String.t`, *default:* `nil`) - Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
  *   `parameterMapping` (*type:* `map()`, *default:* `nil`) - Optional. Maps the values extracted from specific fields of the flexible webhook response into session parameters. - Key: session parameter name - Value: field path in the webhook response
  *   `password` (*type:* `String.t`, *default:* `nil`) - The password for HTTP Basic authentication.
  *   `requestBody` (*type:* `String.t`, *default:* `nil`) - Optional. Defines a custom JSON object as request body to send to flexible webhook.
  *   `requestHeaders` (*type:* `map()`, *default:* `nil`) - The HTTP request headers to send together with webhook requests.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Required. The webhook URI for receiving POST requests. It must use https protocol.
  *   `username` (*type:* `String.t`, *default:* `nil`) - The user name for HTTP Basic authentication.
  *   `webhookType` (*type:* `String.t`, *default:* `nil`) - Optional. Type of the webhook.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedCaCerts => list(String.t()) | nil,
          :httpMethod => String.t() | nil,
          :parameterMapping => map() | nil,
          :password => String.t() | nil,
          :requestBody => String.t() | nil,
          :requestHeaders => map() | nil,
          :uri => String.t() | nil,
          :username => String.t() | nil,
          :webhookType => String.t() | nil
        }

  field(:allowedCaCerts, type: :list)
  field(:httpMethod)
  field(:parameterMapping, type: :map)
  field(:password)
  field(:requestBody)
  field(:requestHeaders, type: :map)
  field(:uri)
  field(:username)
  field(:webhookType)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookGenericWebService do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookGenericWebService.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookGenericWebService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
