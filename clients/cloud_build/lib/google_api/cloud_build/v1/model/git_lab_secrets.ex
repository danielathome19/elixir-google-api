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

defmodule GoogleApi.CloudBuild.V1.Model.GitLabSecrets do
  @moduledoc """
  GitLabSecrets represents the secrets in Secret Manager for a GitLab integration.

  ## Attributes

  *   `apiAccessTokenVersion` (*type:* `String.t`, *default:* `nil`) - Required. The resource name for the api access token’s secret version
  *   `apiKeyVersion` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. API Key that will be attached to webhook requests from GitLab to Cloud Build.
  *   `readAccessTokenVersion` (*type:* `String.t`, *default:* `nil`) - Required. The resource name for the read access token’s secret version
  *   `webhookSecretVersion` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The resource name for the webhook secret’s secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another GitLabConfig.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiAccessTokenVersion => String.t() | nil,
          :apiKeyVersion => String.t() | nil,
          :readAccessTokenVersion => String.t() | nil,
          :webhookSecretVersion => String.t() | nil
        }

  field(:apiAccessTokenVersion)
  field(:apiKeyVersion)
  field(:readAccessTokenVersion)
  field(:webhookSecretVersion)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.GitLabSecrets do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.GitLabSecrets.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.GitLabSecrets do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
