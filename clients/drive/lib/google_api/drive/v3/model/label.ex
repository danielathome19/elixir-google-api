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

defmodule GoogleApi.Drive.V3.Model.Label do
  @moduledoc """
  Representation of label and label fields.

  ## Attributes

  *   `fields` (*type:* `%{optional(String.t) => GoogleApi.Drive.V3.Model.LabelField.t}`, *default:* `nil`) - A map of the fields on the label, keyed by the field's ID.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the label.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always drive#label
  *   `revisionId` (*type:* `String.t`, *default:* `nil`) - The revision ID of the label.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => %{optional(String.t()) => GoogleApi.Drive.V3.Model.LabelField.t()} | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :revisionId => String.t() | nil
        }

  field(:fields, as: GoogleApi.Drive.V3.Model.LabelField, type: :map)
  field(:id)
  field(:kind)
  field(:revisionId)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.Label do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.Label.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.Label do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
