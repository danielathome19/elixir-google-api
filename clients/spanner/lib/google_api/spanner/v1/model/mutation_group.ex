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

defmodule GoogleApi.Spanner.V1.Model.MutationGroup do
  @moduledoc """
  A group of mutations to be committed together. Related mutations should be placed in a group. For example, two mutations inserting rows with the same primary key prefix in both parent and child tables are related.

  ## Attributes

  *   `mutations` (*type:* `list(GoogleApi.Spanner.V1.Model.Mutation.t)`, *default:* `nil`) - Required. The mutations in this group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mutations => list(GoogleApi.Spanner.V1.Model.Mutation.t()) | nil
        }

  field(:mutations, as: GoogleApi.Spanner.V1.Model.Mutation, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.MutationGroup do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.MutationGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.MutationGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
