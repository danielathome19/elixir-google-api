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

defmodule GoogleApi.DoubleClickBidManager.V2.Model.Options do
  @moduledoc """
  Additional query options.

  ## Attributes

  *   `includeOnlyTargetedUserLists` (*type:* `boolean()`, *default:* `nil`) - Set to true and filter your report by `FILTER_INSERTION_ORDER` or `FILTER_LINE_ITEM` to include data for audience lists specifically targeted by those items.
  *   `pathQueryOptions` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.PathQueryOptions.t`, *default:* `nil`) - Options that contain Path Filters and Custom Channel Groupings. This field is deprecated and will sunset on **May 1, 2024**. After sunset, requests using this field will return an error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :includeOnlyTargetedUserLists => boolean() | nil,
          :pathQueryOptions => GoogleApi.DoubleClickBidManager.V2.Model.PathQueryOptions.t() | nil
        }

  field(:includeOnlyTargetedUserLists)
  field(:pathQueryOptions, as: GoogleApi.DoubleClickBidManager.V2.Model.PathQueryOptions)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V2.Model.Options do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V2.Model.Options.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V2.Model.Options do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
