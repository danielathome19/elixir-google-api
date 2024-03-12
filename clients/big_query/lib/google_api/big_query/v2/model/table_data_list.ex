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

defmodule GoogleApi.BigQuery.V2.Model.TableDataList do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - A hash of this page of results.
  *   `kind` (*type:* `String.t`, *default:* `bigquery#tableDataList`) - The resource type of the response.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A token used for paging results. Providing this token instead of the startIndex parameter can help you retrieve stable results when an underlying table is changing.
  *   `rows` (*type:* `list(GoogleApi.BigQuery.V2.Model.TableRow.t)`, *default:* `nil`) - Rows of results.
  *   `totalRows` (*type:* `String.t`, *default:* `nil`) - Total rows of the entire table. In order to show default value 0 we have to present it as string.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :kind => String.t() | nil,
          :pageToken => String.t() | nil,
          :rows => list(GoogleApi.BigQuery.V2.Model.TableRow.t()) | nil,
          :totalRows => String.t() | nil
        }

  field(:etag)
  field(:kind)
  field(:pageToken)
  field(:rows, as: GoogleApi.BigQuery.V2.Model.TableRow, type: :list)
  field(:totalRows)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableDataList do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableDataList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableDataList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
