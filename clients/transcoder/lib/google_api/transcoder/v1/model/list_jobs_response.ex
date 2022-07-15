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

defmodule GoogleApi.Transcoder.V1.Model.ListJobsResponse do
  @moduledoc """
  Response message for `TranscoderService.ListJobs`.

  ## Attributes

  *   `jobs` (*type:* `list(GoogleApi.Transcoder.V1.Model.Job.t)`, *default:* `nil`) - List of jobs in the specified region.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The pagination token.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - List of regions that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobs => list(GoogleApi.Transcoder.V1.Model.Job.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:jobs, as: GoogleApi.Transcoder.V1.Model.Job, type: :list)
  field(:nextPageToken)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.ListJobsResponse do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.ListJobsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.ListJobsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
