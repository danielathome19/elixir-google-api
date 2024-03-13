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

defmodule GoogleApi.Metastore.V1.Model.QueryMetadataRequest do
  @moduledoc """
  Request message for DataprocMetastore.QueryMetadata.

  ## Attributes

  *   `query` (*type:* `String.t`, *default:* `nil`) - Required. A read-only SQL query to execute against the metadata database. The query cannot change or mutate the data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :query => String.t() | nil
        }

  field(:query)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1.Model.QueryMetadataRequest do
  def decode(value, options) do
    GoogleApi.Metastore.V1.Model.QueryMetadataRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1.Model.QueryMetadataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
