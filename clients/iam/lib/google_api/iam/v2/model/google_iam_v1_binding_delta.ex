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

defmodule GoogleApi.IAM.V2.Model.GoogleIamV1BindingDelta do
  @moduledoc """
  One delta entry for Binding. Each individual change (only one member in each entry) to a binding will be a separate entry.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - The action that was performed on a Binding. Required
  *   `condition` (*type:* `GoogleApi.IAM.V2.Model.GoogleTypeExpr.t`, *default:* `nil`) - The condition that is associated with this binding.
  *   `member` (*type:* `String.t`, *default:* `nil`) - A single identity requesting access for a Google Cloud resource. Follows the same format of Binding.members. Required
  *   `role` (*type:* `String.t`, *default:* `nil`) - Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`, or `roles/owner`. Required
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :condition => GoogleApi.IAM.V2.Model.GoogleTypeExpr.t() | nil,
          :member => String.t() | nil,
          :role => String.t() | nil
        }

  field(:action)
  field(:condition, as: GoogleApi.IAM.V2.Model.GoogleTypeExpr)
  field(:member)
  field(:role)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V2.Model.GoogleIamV1BindingDelta do
  def decode(value, options) do
    GoogleApi.IAM.V2.Model.GoogleIamV1BindingDelta.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V2.Model.GoogleIamV1BindingDelta do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
