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

defmodule GoogleApi.Compute.V1.Model.SourceInstanceParams do
  @moduledoc """
  A specification of the parameters to use when creating the instance template from a source instance.

  ## Attributes

  *   `diskConfigs` (*type:* `list(GoogleApi.Compute.V1.Model.DiskInstantiationConfig.t)`, *default:* `nil`) - Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, new custom images will be created from each disk. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :diskConfigs => list(GoogleApi.Compute.V1.Model.DiskInstantiationConfig.t()) | nil
        }

  field(:diskConfigs, as: GoogleApi.Compute.V1.Model.DiskInstantiationConfig, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SourceInstanceParams do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SourceInstanceParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SourceInstanceParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
