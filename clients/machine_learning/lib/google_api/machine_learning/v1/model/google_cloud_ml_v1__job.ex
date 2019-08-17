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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Job do
  @moduledoc """
  Represents a training or prediction job.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When the job was created.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When the job processing was completed.
  *   `errorMessage` (*type:* `String.t`, *default:* `nil`) - Output only. The details of a failure or a cancellation.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - `etag` is used for optimistic concurrency control as a way to help
      prevent simultaneous updates of a job from overwriting each other.
      It is strongly suggested that systems make use of the `etag` in the
      read-modify-write cycle to perform job updates in order to avoid race
      conditions: An `etag` is returned in the response to `GetJob`, and
      systems are expected to put that etag in the request to `UpdateJob` to
      ensure that their change will be applied to the same version of the job.
  *   `jobId` (*type:* `String.t`, *default:* `nil`) - Required. The user-specified id of the job.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. One or more labels that you can add, to organize your jobs.
      Each label is a key-value pair, where both the key and the value are
      arbitrary strings that you supply.
      For more information, see the documentation on
      <a href="/ml-engine/docs/tensorflow/resource-labels">using labels</a>.
  *   `predictionInput` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__PredictionInput.t`, *default:* `nil`) - Input parameters to create a prediction job.
  *   `predictionOutput` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__PredictionOutput.t`, *default:* `nil`) - The current prediction job result.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When the job processing was started.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The detailed state of a job.
  *   `trainingInput` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__TrainingInput.t`, *default:* `nil`) - Input parameters to create a training job.
  *   `trainingOutput` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__TrainingOutput.t`, *default:* `nil`) - The current training job result.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :endTime => DateTime.t(),
          :errorMessage => String.t(),
          :etag => String.t(),
          :jobId => String.t(),
          :labels => map(),
          :predictionInput =>
            GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__PredictionInput.t(),
          :predictionOutput =>
            GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__PredictionOutput.t(),
          :startTime => DateTime.t(),
          :state => String.t(),
          :trainingInput => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__TrainingInput.t(),
          :trainingOutput =>
            GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__TrainingOutput.t()
        }

  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:errorMessage)
  field(:etag)
  field(:jobId)
  field(:labels, type: :map)
  field(:predictionInput, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__PredictionInput)

  field(
    :predictionOutput,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__PredictionOutput
  )

  field(:startTime, as: DateTime)
  field(:state)
  field(:trainingInput, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__TrainingInput)
  field(:trainingOutput, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__TrainingOutput)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Job do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Job.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Job do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
