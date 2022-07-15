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

defmodule GoogleApi.DFAReporting.V4.Model.CreativeClickThroughUrl do
  @moduledoc """
  Click-through URL

  ## Attributes

  *   `computedClickThroughUrl` (*type:* `String.t`, *default:* `nil`) - Read-only convenience field representing the actual URL that will be used for this click-through. The URL is computed as follows: - If landingPageId is specified then that landing page's URL is assigned to this field. - Otherwise, the customClickThroughUrl is assigned to this field. 
  *   `customClickThroughUrl` (*type:* `String.t`, *default:* `nil`) - Custom click-through URL. Applicable if the landingPageId field is left unset.
  *   `landingPageId` (*type:* `String.t`, *default:* `nil`) - ID of the landing page for the click-through URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :computedClickThroughUrl => String.t() | nil,
          :customClickThroughUrl => String.t() | nil,
          :landingPageId => String.t() | nil
        }

  field(:computedClickThroughUrl)
  field(:customClickThroughUrl)
  field(:landingPageId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.CreativeClickThroughUrl do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.CreativeClickThroughUrl.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.CreativeClickThroughUrl do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
