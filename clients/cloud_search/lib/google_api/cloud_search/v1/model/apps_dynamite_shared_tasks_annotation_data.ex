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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationData do
  @moduledoc """
  This is the internal version of the API proto at google3/google/chat/v1/gsuite_message_integration.proto

  ## Attributes

  *   `assigneeChange` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataAssigneeChange.t`, *default:* `nil`) - 
  *   `completionChange` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataCompletionChange.t`, *default:* `nil`) - 
  *   `creation` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataCreation.t`, *default:* `nil`) - 
  *   `deletionChange` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataDeletionChange.t`, *default:* `nil`) - 
  *   `taskId` (*type:* `String.t`, *default:* `nil`) - ID of task. Will be used to create deep links to Tasks.
  *   `taskProperties` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataTaskProperties.t`, *default:* `nil`) - Task properties after the update has been applied.
  *   `userDefinedMessage` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assigneeChange =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataAssigneeChange.t()
            | nil,
          :completionChange =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataCompletionChange.t()
            | nil,
          :creation =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataCreation.t() | nil,
          :deletionChange =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataDeletionChange.t()
            | nil,
          :taskId => String.t() | nil,
          :taskProperties =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataTaskProperties.t()
            | nil,
          :userDefinedMessage =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage.t()
            | nil
        }

  field(:assigneeChange,
    as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataAssigneeChange
  )

  field(:completionChange,
    as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataCompletionChange
  )

  field(:creation,
    as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataCreation
  )

  field(:deletionChange,
    as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataDeletionChange
  )

  field(:taskId)

  field(:taskProperties,
    as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataTaskProperties
  )

  field(:userDefinedMessage,
    as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationDataUserDefinedMessage
  )
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationData do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTasksAnnotationData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end