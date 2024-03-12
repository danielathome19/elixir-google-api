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

defmodule GoogleApi.BigQuery.V2.Model.ScriptOptions do
  @moduledoc """
  Options related to script execution.

  ## Attributes

  *   `keyResultStatement` (*type:* `String.t`, *default:* `nil`) - Determines which statement in the script represents the "key result", used to populate the schema and query results of the script job. Default is LAST.
  *   `statementByteBudget` (*type:* `String.t`, *default:* `nil`) - Limit on the number of bytes billed per statement. Exceeding this budget results in an error.
  *   `statementTimeoutMs` (*type:* `String.t`, *default:* `nil`) - Timeout period for each statement in a script.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :keyResultStatement => String.t() | nil,
          :statementByteBudget => String.t() | nil,
          :statementTimeoutMs => String.t() | nil
        }

  field(:keyResultStatement)
  field(:statementByteBudget)
  field(:statementTimeoutMs)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ScriptOptions do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.ScriptOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ScriptOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
