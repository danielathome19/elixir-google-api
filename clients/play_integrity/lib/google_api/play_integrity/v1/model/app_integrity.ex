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

defmodule GoogleApi.PlayIntegrity.V1.Model.AppIntegrity do
  @moduledoc """
  Contains the application integrity information.

  ## Attributes

  *   `appRecognitionVerdict` (*type:* `String.t`, *default:* `nil`) - Required. Details about the app recognition verdict
  *   `certificateSha256Digest` (*type:* `list(String.t)`, *default:* `nil`) - The SHA256 hash of the requesting app's signing certificates (base64 web-safe encoded). Set iff app_recognition_verdict != UNEVALUATED.
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - Package name of the application under attestation. Set iff app_recognition_verdict != UNEVALUATED.
  *   `versionCode` (*type:* `String.t`, *default:* `nil`) - Version code of the application. Set iff app_recognition_verdict != UNEVALUATED.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appRecognitionVerdict => String.t() | nil,
          :certificateSha256Digest => list(String.t()) | nil,
          :packageName => String.t() | nil,
          :versionCode => String.t() | nil
        }

  field(:appRecognitionVerdict)
  field(:certificateSha256Digest, type: :list)
  field(:packageName)
  field(:versionCode)
end

defimpl Poison.Decoder, for: GoogleApi.PlayIntegrity.V1.Model.AppIntegrity do
  def decode(value, options) do
    GoogleApi.PlayIntegrity.V1.Model.AppIntegrity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlayIntegrity.V1.Model.AppIntegrity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
