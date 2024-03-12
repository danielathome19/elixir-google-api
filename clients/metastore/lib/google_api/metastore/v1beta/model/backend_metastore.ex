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

defmodule GoogleApi.Metastore.V1beta.Model.BackendMetastore do
  @moduledoc """
  Represents a backend metastore for the federation.

  ## Attributes

  *   `metastoreType` (*type:* `String.t`, *default:* `nil`) - The type of the backend metastore.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The relative resource name of the metastore that is being federated. The formats of the relative resource names for the currently supported metastores are listed below: BigQuery projects/{project_id} Dataproc Metastore projects/{project_id}/locations/{location}/services/{service_id}
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metastoreType => String.t() | nil,
          :name => String.t() | nil
        }

  field(:metastoreType)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1beta.Model.BackendMetastore do
  def decode(value, options) do
    GoogleApi.Metastore.V1beta.Model.BackendMetastore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1beta.Model.BackendMetastore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
