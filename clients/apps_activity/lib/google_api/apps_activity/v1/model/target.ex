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

defmodule GoogleApi.AppsActivity.V1.Model.Target do
  @moduledoc """
  Information about the object modified by the event.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the target. For example, in Google Drive, this is the file or folder ID.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - The MIME type of the target.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the target. For example, in Google Drive, this is the title of the file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :mimeType => String.t(),
          :name => String.t()
        }

  field(:id)
  field(:mimeType)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.AppsActivity.V1.Model.Target do
  def decode(value, options) do
    GoogleApi.AppsActivity.V1.Model.Target.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppsActivity.V1.Model.Target do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
