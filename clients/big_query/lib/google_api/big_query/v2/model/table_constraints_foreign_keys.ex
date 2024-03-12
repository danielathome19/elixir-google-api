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

defmodule GoogleApi.BigQuery.V2.Model.TableConstraintsForeignKeys do
  @moduledoc """
  Represents a foreign key constraint on a table's columns.

  ## Attributes

  *   `columnReferences` (*type:* `list(GoogleApi.BigQuery.V2.Model.TableConstraintsForeignKeysColumnReferences.t)`, *default:* `nil`) - Required. The columns that compose the foreign key.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. Set only if the foreign key constraint is named.
  *   `referencedTable` (*type:* `GoogleApi.BigQuery.V2.Model.TableConstraintsForeignKeysReferencedTable.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnReferences =>
            list(GoogleApi.BigQuery.V2.Model.TableConstraintsForeignKeysColumnReferences.t())
            | nil,
          :name => String.t() | nil,
          :referencedTable =>
            GoogleApi.BigQuery.V2.Model.TableConstraintsForeignKeysReferencedTable.t() | nil
        }

  field(:columnReferences,
    as: GoogleApi.BigQuery.V2.Model.TableConstraintsForeignKeysColumnReferences,
    type: :list
  )

  field(:name)

  field(:referencedTable,
    as: GoogleApi.BigQuery.V2.Model.TableConstraintsForeignKeysReferencedTable
  )
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableConstraintsForeignKeys do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableConstraintsForeignKeys.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableConstraintsForeignKeys do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
