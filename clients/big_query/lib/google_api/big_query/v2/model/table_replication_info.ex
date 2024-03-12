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

defmodule GoogleApi.BigQuery.V2.Model.TableReplicationInfo do
  @moduledoc """
  Replication info of a table created using `AS REPLICA` DDL like: `CREATE MATERIALIZED VIEW mv1 AS REPLICA OF src_mv`

  ## Attributes

  *   `replicatedSourceLastRefreshTime` (*type:* `String.t`, *default:* `nil`) - Optional. Output only. If source is a materialized view, this field signifies the last refresh time of the source.
  *   `replicationError` (*type:* `GoogleApi.BigQuery.V2.Model.ErrorProto.t`, *default:* `nil`) - Optional. Output only. Replication error that will permanently stopped table replication.
  *   `replicationIntervalMs` (*type:* `String.t`, *default:* `nil`) - Required. Specifies the interval at which the source table is polled for updates.
  *   `replicationStatus` (*type:* `String.t`, *default:* `nil`) - Optional. Output only. Replication status of configured replication.
  *   `sourceTable` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - Required. Source table reference that is replicated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :replicatedSourceLastRefreshTime => String.t() | nil,
          :replicationError => GoogleApi.BigQuery.V2.Model.ErrorProto.t() | nil,
          :replicationIntervalMs => String.t() | nil,
          :replicationStatus => String.t() | nil,
          :sourceTable => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil
        }

  field(:replicatedSourceLastRefreshTime)
  field(:replicationError, as: GoogleApi.BigQuery.V2.Model.ErrorProto)
  field(:replicationIntervalMs)
  field(:replicationStatus)
  field(:sourceTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableReplicationInfo do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableReplicationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableReplicationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
