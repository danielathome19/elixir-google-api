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

defmodule GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson do
  @moduledoc """
  Common representation of a person.

  ## Attributes

  *   `birthday` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPersonBirthday.t`, *default:* `nil`) - The birthday.
  *   `cellPhone` (*type:* `String.t`, *default:* `nil`) - Cell phone number.
  *   `department` (*type:* `String.t`, *default:* `nil`) - The department the person works in (e.g. Engineering).
  *   `deskLocation` (*type:* `String.t`, *default:* `nil`) - Desk location (e.g. US-MTV-PR55-5-5B1I).
  *   `deskPhone` (*type:* `String.t`, *default:* `nil`) - Work desk phone number.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The full name.
  *   `email` (*type:* `String.t`, *default:* `nil`) - Email.
  *   `familyName` (*type:* `String.t`, *default:* `nil`) - The last name.
  *   `fullAddress` (*type:* `String.t`, *default:* `nil`) - The fully formatted address (e.g. 1255 Pear Avenue, Mountain View 94043, United States).
  *   `gaiaId` (*type:* `String.t`, *default:* `nil`) - This field is deprecated. The obfuscated_id should be used instead.
  *   `givenName` (*type:* `String.t`, *default:* `nil`) - The first name.
  *   `jobTitle` (*type:* `String.t`, *default:* `nil`) - The person's job title (e.g. Software Engineer).
  *   `manager` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson.t`, *default:* `nil`) - The manager.
  *   `obfuscatedId` (*type:* `String.t`, *default:* `nil`) - The obfuscated GAIA ID.
  *   `photoUrl` (*type:* `String.t`, *default:* `nil`) - The URL for the Focus profile picture.
  *   `streetAddress` (*type:* `String.t`, *default:* `nil`) - The street address (e.g. 1255 Pear Avenue).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :birthday =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPersonBirthday.t() | nil,
          :cellPhone => String.t() | nil,
          :department => String.t() | nil,
          :deskLocation => String.t() | nil,
          :deskPhone => String.t() | nil,
          :displayName => String.t() | nil,
          :email => String.t() | nil,
          :familyName => String.t() | nil,
          :fullAddress => String.t() | nil,
          :gaiaId => String.t() | nil,
          :givenName => String.t() | nil,
          :jobTitle => String.t() | nil,
          :manager =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson.t() | nil,
          :obfuscatedId => String.t() | nil,
          :photoUrl => String.t() | nil,
          :streetAddress => String.t() | nil
        }

  field(:birthday, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPersonBirthday)
  field(:cellPhone)
  field(:department)
  field(:deskLocation)
  field(:deskPhone)
  field(:displayName)
  field(:email)
  field(:familyName)
  field(:fullAddress)
  field(:gaiaId)
  field(:givenName)
  field(:jobTitle)
  field(:manager, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson)
  field(:obfuscatedId)
  field(:photoUrl)
  field(:streetAddress)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
