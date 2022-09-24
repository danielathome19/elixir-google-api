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

defmodule GoogleApi.CloudBuild.V1.Model.GitLabEnterpriseConfig do
  @moduledoc """
  GitLabEnterpriseConfig represents the configuration for a GitLabEnterprise integration.

  ## Attributes

  *   `hostUri` (*type:* `String.t`, *default:* `nil`) - Immutable. The URI of the GitlabEnterprise host.
  *   `serviceDirectoryConfig` (*type:* `GoogleApi.CloudBuild.V1.Model.ServiceDirectoryConfig.t`, *default:* `nil`) - The Service Directory configuration to be used when reaching out to the GitLab Enterprise instance.
  *   `sslCa` (*type:* `String.t`, *default:* `nil`) - The SSL certificate to use in requests to GitLab Enterprise instances.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hostUri => String.t() | nil,
          :serviceDirectoryConfig =>
            GoogleApi.CloudBuild.V1.Model.ServiceDirectoryConfig.t() | nil,
          :sslCa => String.t() | nil
        }

  field(:hostUri)
  field(:serviceDirectoryConfig, as: GoogleApi.CloudBuild.V1.Model.ServiceDirectoryConfig)
  field(:sslCa)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.GitLabEnterpriseConfig do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.GitLabEnterpriseConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.GitLabEnterpriseConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
