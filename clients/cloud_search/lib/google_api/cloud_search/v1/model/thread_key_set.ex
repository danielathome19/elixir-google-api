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

defmodule GoogleApi.CloudSearch.V1.Model.ThreadKeySet do
  @moduledoc """
  The ThreadKey was set on some (subset of the) messages in this thread.

  ## Attributes

  *   `messageKeys` (*type:* `list(GoogleApi.CloudSearch.V1.Model.MultiKey.t)`, *default:* `nil`) - Messages on which the thread_key was changed.
  *   `newThreadKey` (*type:* `GoogleApi.CloudSearch.V1.Model.MultiKey.t`, *default:* `nil`) - The new thread_key for this thread
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :messageKeys => list(GoogleApi.CloudSearch.V1.Model.MultiKey.t()) | nil,
          :newThreadKey => GoogleApi.CloudSearch.V1.Model.MultiKey.t() | nil
        }

  field(:messageKeys, as: GoogleApi.CloudSearch.V1.Model.MultiKey, type: :list)
  field(:newThreadKey, as: GoogleApi.CloudSearch.V1.Model.MultiKey)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.ThreadKeySet do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.ThreadKeySet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.ThreadKeySet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
