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

defmodule GoogleApi.BigQueryConnection.V1.Model.CloudResourceProperties do
  @moduledoc """
  Container for connection properties for delegation of access to GCP resources.

  ## Attributes

  *   `serviceAccountId` (*type:* `String.t`, *default:* `nil`) - Output only. The account ID of the service created for the purpose of this connection. The service account does not have any permissions associated with it when it is created. After creation, customers delegate permissions to the service account. When the connection is used in the context of an operation in BigQuery, the service account will be used to connect to the desired resources in GCP. The account ID is in the form of: @gcp-sa-bigquery-cloudresource.iam.gserviceaccount.com
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :serviceAccountId => String.t() | nil
        }

  field(:serviceAccountId)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryConnection.V1.Model.CloudResourceProperties do
  def decode(value, options) do
    GoogleApi.BigQueryConnection.V1.Model.CloudResourceProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryConnection.V1.Model.CloudResourceProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
