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

defmodule GoogleApi.CloudBuild.V1.Model.GitLabRepository do
  @moduledoc """
  Proto Representing a GitLabRepository

  ## Attributes

  *   `browseUri` (*type:* `String.t`, *default:* `nil`) - Link to the browse repo page on the GitLab instance
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the repository
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name of the repository
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the repository
  *   `repositoryId` (*type:* `GoogleApi.CloudBuild.V1.Model.GitLabRepositoryId.t`, *default:* `nil`) - Identifier for a repository
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :browseUri => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :repositoryId => GoogleApi.CloudBuild.V1.Model.GitLabRepositoryId.t() | nil
        }

  field(:browseUri)
  field(:description)
  field(:displayName)
  field(:name)
  field(:repositoryId, as: GoogleApi.CloudBuild.V1.Model.GitLabRepositoryId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.GitLabRepository do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.GitLabRepository.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.GitLabRepository do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
