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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentInfrastructureSpec do
  @moduledoc """
  Configuration for the underlying infrastructure used to run workloads.

  ## Attributes

  *   `compute` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources.t`, *default:* `nil`) - Optional. Compute resources needed for analyze interactive workloads.
  *   `osImage` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime.t`, *default:* `nil`) - Required. Software Runtime Configuration for analyze interactive workloads.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compute =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources.t()
            | nil,
          :osImage =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime.t()
            | nil
        }

  field(:compute,
    as:
      GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources
  )

  field(:osImage,
    as:
      GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentInfrastructureSpec do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentInfrastructureSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentInfrastructureSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end