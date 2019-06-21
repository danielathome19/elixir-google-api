# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Model.OrderShipment do
  @moduledoc """


  ## Attributes

  - carrier (String.t): The carrier handling the shipment.

  Acceptable values for US are:  
  - "gsx" 
  - "ups" 
  - "usps" 
  - "fedex" 
  - "dhl" 
  - "ecourier" 
  - "cxt" 
  - "google" 
  - "ontrac" 
  - "emsy" 
  - "ont" 
  - "deliv" 
  - "dynamex" 
  - "lasership" 
  - "mpx" 
  - "uds" 
  - "efw"  

  Acceptable values for FR are:  
  - "colissimo" 
  - "chronopost" 
  - "gls" 
  - "dpd" 
  - "bpost" Defaults to `nil`.
  - creationDate (String.t): Date on which the shipment has been created, in ISO 8601 format. Defaults to `nil`.
  - deliveryDate (String.t): Date on which the shipment has been delivered, in ISO 8601 format. Present only if status is delivered Defaults to `nil`.
  - id (String.t): The ID of the shipment. Defaults to `nil`.
  - lineItems (list(GoogleApi.Content.V2.Model.OrderShipmentLineItemShipment.t)): The line items that are shipped. Defaults to `nil`.
  - status (String.t): The status of the shipment. Defaults to `nil`.
  - trackingId (String.t): The tracking ID for the shipment. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrier => String.t(),
          :creationDate => String.t(),
          :deliveryDate => String.t(),
          :id => String.t(),
          :lineItems => list(GoogleApi.Content.V2.Model.OrderShipmentLineItemShipment.t()),
          :status => String.t(),
          :trackingId => String.t()
        }

  field(:carrier)
  field(:creationDate)
  field(:deliveryDate)
  field(:id)
  field(:lineItems, as: GoogleApi.Content.V2.Model.OrderShipmentLineItemShipment, type: :list)
  field(:status)
  field(:trackingId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderShipment do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderShipment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderShipment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
