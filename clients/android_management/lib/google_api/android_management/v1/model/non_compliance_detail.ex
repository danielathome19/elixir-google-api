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

defmodule GoogleApi.AndroidManagement.V1.Model.NonComplianceDetail do
  @moduledoc """
  Provides detail about non-compliance with a policy setting.

  ## Attributes

  *   `currentValue` (*type:* `any()`, *default:* `nil`) - If the policy setting could not be applied, the current value of the setting on the device.
  *   `fieldPath` (*type:* `String.t`, *default:* `nil`) - For settings with nested fields, if a particular nested field is out of compliance, this specifies the full path to the offending field. The path is formatted in the same way the policy JSON field would be referenced in JavaScript, that is: 1) For object-typed fields, the field name is followed by a dot then by a subfield name. 2) For array-typed fields, the field name is followed by the array index enclosed in brackets. For example, to indicate a problem with the url field in the externalData field in the 3rd application, the path would be applications[2].externalData.url
  *   `installationFailureReason` (*type:* `String.t`, *default:* `nil`) - If package_name is set and the non-compliance reason is APP_NOT_INSTALLED or APP_NOT_UPDATED, the detailed reason the app can't be installed or updated.
  *   `nonComplianceReason` (*type:* `String.t`, *default:* `nil`) - The reason the device is not in compliance with the setting.
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - The package name indicating which app is out of compliance, if applicable.
  *   `settingName` (*type:* `String.t`, *default:* `nil`) - The name of the policy setting. This is the JSON field name of a top-level Policy field.
  *   `specificNonComplianceContext` (*type:* `GoogleApi.AndroidManagement.V1.Model.SpecificNonComplianceContext.t`, *default:* `nil`) - Additional context for specific_non_compliance_reason.
  *   `specificNonComplianceReason` (*type:* `String.t`, *default:* `nil`) - The policy-specific reason the device is not in compliance with the setting.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentValue => any() | nil,
          :fieldPath => String.t() | nil,
          :installationFailureReason => String.t() | nil,
          :nonComplianceReason => String.t() | nil,
          :packageName => String.t() | nil,
          :settingName => String.t() | nil,
          :specificNonComplianceContext =>
            GoogleApi.AndroidManagement.V1.Model.SpecificNonComplianceContext.t() | nil,
          :specificNonComplianceReason => String.t() | nil
        }

  field(:currentValue)
  field(:fieldPath)
  field(:installationFailureReason)
  field(:nonComplianceReason)
  field(:packageName)
  field(:settingName)

  field(:specificNonComplianceContext,
    as: GoogleApi.AndroidManagement.V1.Model.SpecificNonComplianceContext
  )

  field(:specificNonComplianceReason)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.NonComplianceDetail do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.NonComplianceDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.NonComplianceDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
