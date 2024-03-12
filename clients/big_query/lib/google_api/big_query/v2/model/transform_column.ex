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

defmodule GoogleApi.BigQuery.V2.Model.TransformColumn do
  @moduledoc """
  Information about a single transform column.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the column.
  *   `transformSql` (*type:* `String.t`, *default:* `nil`) - Output only. The SQL expression used in the column transform.
  *   `type` (*type:* `GoogleApi.BigQuery.V2.Model.StandardSqlDataType.t`, *default:* `nil`) - Output only. Data type of the column after the transform.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :transformSql => String.t() | nil,
          :type => GoogleApi.BigQuery.V2.Model.StandardSqlDataType.t() | nil
        }

  field(:name)
  field(:transformSql)
  field(:type, as: GoogleApi.BigQuery.V2.Model.StandardSqlDataType)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TransformColumn do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TransformColumn.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TransformColumn do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
