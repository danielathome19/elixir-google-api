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

defmodule GoogleApi.CloudSearch.V1.Model.FolderAttribute do
  @moduledoc """
  This is the content of //imapsync/folder attribute.

  ## Attributes

  *   `folder` (*type:* `list(GoogleApi.CloudSearch.V1.Model.Folder.t)`, *default:* `nil`) - List of all IMAP folders where the message presents.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :folder => list(GoogleApi.CloudSearch.V1.Model.Folder.t()) | nil
        }

  field(:folder, as: GoogleApi.CloudSearch.V1.Model.Folder, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.FolderAttribute do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.FolderAttribute.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.FolderAttribute do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
