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

defmodule GoogleApi.Redis.V1beta1.Model.DatabaseResourceMetadata do
  @moduledoc """
  Common model for database resource instance metadata.

  ## Attributes

  *   `availabilityConfiguration` (*type:* `GoogleApi.Redis.V1beta1.Model.AvailabilityConfiguration.t`, *default:* `nil`) - Availability configuration for this instance
  *   `backupConfiguration` (*type:* `GoogleApi.Redis.V1beta1.Model.BackupConfiguration.t`, *default:* `nil`) - Backup configuration for this instance
  *   `backupRun` (*type:* `GoogleApi.Redis.V1beta1.Model.BackupRun.t`, *default:* `nil`) - Latest backup run information for this instance
  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - The creation time of the resource, i.e. the time when resource is created and recorded in partner service.
  *   `currentState` (*type:* `String.t`, *default:* `nil`) - Current state of the instance.
  *   `customMetadata` (*type:* `GoogleApi.Redis.V1beta1.Model.CustomMetadataData.t`, *default:* `nil`) - Any custom metadata associated with the resource
  *   `entitlements` (*type:* `list(GoogleApi.Redis.V1beta1.Model.Entitlement.t)`, *default:* `nil`) - Entitlements associated with the resource
  *   `expectedState` (*type:* `String.t`, *default:* `nil`) - The state that the instance is expected to be in. For example, an instance state can transition to UNHEALTHY due to wrong patch update, while the expected state will remain at the HEALTHY.
  *   `id` (*type:* `GoogleApi.Redis.V1beta1.Model.DatabaseResourceId.t`, *default:* `nil`) - Required. Unique identifier for a Database resource
  *   `instanceType` (*type:* `String.t`, *default:* `nil`) - The type of the instance. Specified at creation time.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The resource location. REQUIRED
  *   `primaryResourceId` (*type:* `GoogleApi.Redis.V1beta1.Model.DatabaseResourceId.t`, *default:* `nil`) - Identifier for this resource's immediate parent/primary resource if the current resource is a replica or derived form of another Database resource. Else it would be NULL. REQUIRED if the immediate parent exists when first time resource is getting ingested, otherwise optional.
  *   `product` (*type:* `GoogleApi.Redis.V1beta1.Model.Product.t`, *default:* `nil`) - The product this resource represents.
  *   `resourceContainer` (*type:* `String.t`, *default:* `nil`) - Closest parent Cloud Resource Manager container of this resource. It must be resource name of a Cloud Resource Manager project with the format of "/", such as "projects/123". For GCP provided resources, number should be project number.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Required. Different from DatabaseResourceId.unique_id, a resource name can be reused over time. That is, after a resource named "ABC" is deleted, the name "ABC" can be used to to create a new resource within the same source. Resource name to follow CAIS resource_name format as noted here go/condor-common-datamodel
  *   `updationTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the resource was updated and recorded at partner service.
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - User-provided labels, represented as a dictionary where each label is a single key value pair.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availabilityConfiguration =>
            GoogleApi.Redis.V1beta1.Model.AvailabilityConfiguration.t() | nil,
          :backupConfiguration => GoogleApi.Redis.V1beta1.Model.BackupConfiguration.t() | nil,
          :backupRun => GoogleApi.Redis.V1beta1.Model.BackupRun.t() | nil,
          :creationTime => DateTime.t() | nil,
          :currentState => String.t() | nil,
          :customMetadata => GoogleApi.Redis.V1beta1.Model.CustomMetadataData.t() | nil,
          :entitlements => list(GoogleApi.Redis.V1beta1.Model.Entitlement.t()) | nil,
          :expectedState => String.t() | nil,
          :id => GoogleApi.Redis.V1beta1.Model.DatabaseResourceId.t() | nil,
          :instanceType => String.t() | nil,
          :location => String.t() | nil,
          :primaryResourceId => GoogleApi.Redis.V1beta1.Model.DatabaseResourceId.t() | nil,
          :product => GoogleApi.Redis.V1beta1.Model.Product.t() | nil,
          :resourceContainer => String.t() | nil,
          :resourceName => String.t() | nil,
          :updationTime => DateTime.t() | nil,
          :userLabels => map() | nil
        }

  field(:availabilityConfiguration, as: GoogleApi.Redis.V1beta1.Model.AvailabilityConfiguration)
  field(:backupConfiguration, as: GoogleApi.Redis.V1beta1.Model.BackupConfiguration)
  field(:backupRun, as: GoogleApi.Redis.V1beta1.Model.BackupRun)
  field(:creationTime, as: DateTime)
  field(:currentState)
  field(:customMetadata, as: GoogleApi.Redis.V1beta1.Model.CustomMetadataData)
  field(:entitlements, as: GoogleApi.Redis.V1beta1.Model.Entitlement, type: :list)
  field(:expectedState)
  field(:id, as: GoogleApi.Redis.V1beta1.Model.DatabaseResourceId)
  field(:instanceType)
  field(:location)
  field(:primaryResourceId, as: GoogleApi.Redis.V1beta1.Model.DatabaseResourceId)
  field(:product, as: GoogleApi.Redis.V1beta1.Model.Product)
  field(:resourceContainer)
  field(:resourceName)
  field(:updationTime, as: DateTime)
  field(:userLabels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.DatabaseResourceMetadata do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.DatabaseResourceMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.DatabaseResourceMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
