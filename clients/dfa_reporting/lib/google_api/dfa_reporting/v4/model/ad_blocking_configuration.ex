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

defmodule GoogleApi.DFAReporting.V4.Model.AdBlockingConfiguration do
  @moduledoc """
  Campaign ad blocking settings.

  ## Attributes

  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Whether this campaign has enabled ad blocking. When true, ad blocking is enabled for placements in the campaign, but this may be overridden by site and placement settings. When false, ad blocking is disabled for all placements under the campaign, regardless of site and placement settings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabled => boolean() | nil
        }

  field(:enabled)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.AdBlockingConfiguration do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.AdBlockingConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.AdBlockingConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
