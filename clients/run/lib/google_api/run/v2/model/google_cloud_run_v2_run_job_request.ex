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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2RunJobRequest do
  @moduledoc """
  Request message to create a new Execution of a Job.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - Indicates that the request should be validated without actually deleting any resources.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :validateOnly => boolean() | nil
        }

  field(:etag)
  field(:validateOnly)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2RunJobRequest do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2RunJobRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2RunJobRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
