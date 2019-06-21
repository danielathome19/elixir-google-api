# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Model.AccountsCustomBatchResponseEntry do
  @moduledoc """
  A batch entry encoding a single non-batch accounts response.

  ## Attributes

  - account (GoogleApi.Content.V2.Model.Account.t): The retrieved, created, or updated account. Not defined if the method was delete, claimwebsite or link. Defaults to `nil`.
  - batchId (integer()): The ID of the request entry this entry responds to. Defaults to `nil`.
  - errors (GoogleApi.Content.V2.Model.Errors.t): A list of errors defined if and only if the request failed. Defaults to `nil`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string "content#accountsCustomBatchResponseEntry". Defaults to `content#accountsCustomBatchResponseEntry`.
  - linkStatus (String.t): Deprecated. This field is never set. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :account => GoogleApi.Content.V2.Model.Account.t(),
          :batchId => integer(),
          :errors => GoogleApi.Content.V2.Model.Errors.t(),
          :kind => String.t(),
          :linkStatus => String.t()
        }

  field(:account, as: GoogleApi.Content.V2.Model.Account)
  field(:batchId)
  field(:errors, as: GoogleApi.Content.V2.Model.Errors)
  field(:kind)
  field(:linkStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccountsCustomBatchResponseEntry do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.AccountsCustomBatchResponseEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccountsCustomBatchResponseEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
