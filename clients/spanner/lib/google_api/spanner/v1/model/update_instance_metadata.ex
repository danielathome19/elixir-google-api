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

defmodule GoogleApi.Spanner.V1.Model.UpdateInstanceMetadata do
  @moduledoc """
  Metadata type for the operation returned by UpdateInstance.

  ## Attributes

  *   `cancelTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which this operation was cancelled. If set, this operation is in the process of undoing itself (which is guaranteed to succeed) and cannot be cancelled again.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which this operation failed or was completed successfully.
  *   `expectedFulfillmentPeriod` (*type:* `String.t`, *default:* `nil`) - The expected fulfillment period of this update operation.
  *   `instance` (*type:* `GoogleApi.Spanner.V1.Model.Instance.t`, *default:* `nil`) - The desired end state of the update.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which UpdateInstance request was received.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cancelTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil,
          :expectedFulfillmentPeriod => String.t() | nil,
          :instance => GoogleApi.Spanner.V1.Model.Instance.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:cancelTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:expectedFulfillmentPeriod)
  field(:instance, as: GoogleApi.Spanner.V1.Model.Instance)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.UpdateInstanceMetadata do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.UpdateInstanceMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.UpdateInstanceMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
