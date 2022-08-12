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

defmodule GoogleApi.Run.V1.Model.GRPCAction do
  @moduledoc """
  GRPCAction describes an action involving a GRPC port.

  ## Attributes

  *   `port` (*type:* `integer()`, *default:* `nil`) - Port number of the gRPC service. Number must be in the range 1 to 65535.
  *   `service` (*type:* `String.t`, *default:* `nil`) - Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md). If this is not specified, the default behavior is defined by gRPC.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :port => integer() | nil,
          :service => String.t() | nil
        }

  field(:port)
  field(:service)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.GRPCAction do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.GRPCAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.GRPCAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
