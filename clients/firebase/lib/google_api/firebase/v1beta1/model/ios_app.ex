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

defmodule GoogleApi.Firebase.V1beta1.Model.IosApp do
  @moduledoc """
  Details of a Firebase App for iOS.

  ## Attributes

  *   `apiKeyId` (*type:* `String.t`, *default:* `nil`) - The key_id of the GCP ApiKey associated with this App. If set must have no restrictions, or only have restrictions that are valid for the associated Firebase App. Cannot be set in create requests, instead an existing valid API Key will be chosen, or if no valid API Keys exist, one will be provisioned for you. Cannot be set to an empty value in update requests.
  *   `appId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The globally unique, Firebase-assigned identifier for the `IosApp`. This identifier should be treated as an opaque token, as the data format is not specified.
  *   `appStoreId` (*type:* `String.t`, *default:* `nil`) - The automatically generated Apple ID assigned to the iOS app by Apple in the iOS App Store.
  *   `bundleId` (*type:* `String.t`, *default:* `nil`) - Immutable. The canonical bundle ID of the iOS app as it would appear in the iOS AppStore.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user-assigned display name for the `IosApp`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the IosApp, in the format: projects/PROJECT_IDENTIFIER /iosApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.iosApps#IosApp.FIELDS.app_id)).
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `IosApp`.
  *   `teamId` (*type:* `String.t`, *default:* `nil`) - The Apple Developer Team ID associated with the App in the App Store.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiKeyId => String.t() | nil,
          :appId => String.t() | nil,
          :appStoreId => String.t() | nil,
          :bundleId => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :projectId => String.t() | nil,
          :teamId => String.t() | nil
        }

  field(:apiKeyId)
  field(:appId)
  field(:appStoreId)
  field(:bundleId)
  field(:displayName)
  field(:name)
  field(:projectId)
  field(:teamId)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.IosApp do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.IosApp.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.IosApp do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
