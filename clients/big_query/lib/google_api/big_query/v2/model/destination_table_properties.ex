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

defmodule GoogleApi.BigQuery.V2.Model.DestinationTableProperties do
  @moduledoc """
  Properties for the destination table.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current description is provided, the job will fail.
  *   `expirationTime` (*type:* `DateTime.t`, *default:* `nil`) - Internal use only.
  *   `friendlyName` (*type:* `String.t`, *default:* `nil`) - Optional. Friendly name for the destination table. If the table already exists, it should be same as the existing friendly name.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels associated with this table. You can use these to organize and group your tables. This will only be used if the destination table is newly created. If the table already exists and labels are different than the current labels are provided, the job will fail.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :expirationTime => DateTime.t() | nil,
          :friendlyName => String.t() | nil,
          :labels => map() | nil
        }

  field(:description)
  field(:expirationTime, as: DateTime)
  field(:friendlyName)
  field(:labels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.DestinationTableProperties do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.DestinationTableProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.DestinationTableProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
