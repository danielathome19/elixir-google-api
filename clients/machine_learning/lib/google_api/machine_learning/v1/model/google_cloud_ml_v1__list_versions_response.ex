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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ListVersionsResponse do
  @moduledoc """
  Response message for the ListVersions method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Optional. Pass this token as the `page_token` field of the request for a
      subsequent call.
  *   `versions` (*type:* `list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__Version.t)`, *default:* `nil`) - The list of versions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :versions => list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__Version.t())
        }

  field(:nextPageToken)
  field(:versions, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1__Version, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ListVersionsResponse do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ListVersionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_ListVersionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
