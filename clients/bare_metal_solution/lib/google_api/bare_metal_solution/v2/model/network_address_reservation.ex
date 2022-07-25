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

defmodule GoogleApi.BareMetalSolution.V2.Model.NetworkAddressReservation do
  @moduledoc """
  A reservation of one or more addresses in a network.

  ## Attributes

  *   `endAddress` (*type:* `String.t`, *default:* `nil`) - The last address of this reservation block, inclusive. I.e., for cases when reservations are only single addresses, end_address and start_address will be the same. Must be specified as a single IPv4 address, e.g. 10.1.2.2.
  *   `note` (*type:* `String.t`, *default:* `nil`) - A note about this reservation, intended for human consumption.
  *   `startAddress` (*type:* `String.t`, *default:* `nil`) - The first address of this reservation block. Must be specified as a single IPv4 address, e.g. 10.1.2.2.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endAddress => String.t() | nil,
          :note => String.t() | nil,
          :startAddress => String.t() | nil
        }

  field(:endAddress)
  field(:note)
  field(:startAddress)
end

defimpl Poison.Decoder, for: GoogleApi.BareMetalSolution.V2.Model.NetworkAddressReservation do
  def decode(value, options) do
    GoogleApi.BareMetalSolution.V2.Model.NetworkAddressReservation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BareMetalSolution.V2.Model.NetworkAddressReservation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end