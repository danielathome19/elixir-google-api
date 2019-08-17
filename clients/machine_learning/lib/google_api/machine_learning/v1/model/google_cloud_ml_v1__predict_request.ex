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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_PredictRequest do
  @moduledoc """
  Request for predictions to be issued against a trained model.

  ## Attributes

  *   `httpBody` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleApi__HttpBody.t`, *default:* `nil`) - 
      Required. The prediction request body.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :httpBody => GoogleApi.MachineLearning.V1.Model.GoogleApi__HttpBody.t()
        }

  field(:httpBody, as: GoogleApi.MachineLearning.V1.Model.GoogleApi__HttpBody)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_PredictRequest do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_PredictRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_PredictRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
