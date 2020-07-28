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

defmodule GoogleApi.CloudResourceManager.V1.Model.Lien do
  @moduledoc """
  A Lien represents an encumbrance on the actions that can be performed on a resource.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The creation time of this Lien.
  *   `name` (*type:* `String.t`, *default:* `nil`) - A system-generated unique identifier for this Lien. Example: `liens/1234abcd`
  *   `origin` (*type:* `String.t`, *default:* `nil`) - A stable, user-visible/meaningful string identifying the origin of the Lien, intended to be inspected programmatically. Maximum length of 200 characters. Example: 'compute.googleapis.com'
  *   `parent` (*type:* `String.t`, *default:* `nil`) - A reference to the resource this Lien is attached to. The server will validate the parent against those for which Liens are supported. Example: `projects/1234`
  *   `reason` (*type:* `String.t`, *default:* `nil`) - Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum length of 200 characters. Example: 'Holds production API key'
  *   `restrictions` (*type:* `list(String.t)`, *default:* `nil`) - The types of operations which should be blocked as a result of this Lien. Each value should correspond to an IAM permission. The server will validate the permissions against those for which Liens are supported. An empty list is meaningless and will be rejected. Example: ['resourcemanager.projects.delete']
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :name => String.t(),
          :origin => String.t(),
          :parent => String.t(),
          :reason => String.t(),
          :restrictions => list(String.t())
        }

  field(:createTime, as: DateTime)
  field(:name)
  field(:origin)
  field(:parent)
  field(:reason)
  field(:restrictions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.Lien do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.Lien.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.Lien do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
