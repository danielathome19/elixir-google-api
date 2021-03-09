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

defmodule GoogleApi.GameServices.V1.Model.GameServerConfig do
  @moduledoc """
  A game server config resource.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the game server config.
  *   `fleetConfigs` (*type:* `list(GoogleApi.GameServices.V1.Model.FleetConfig.t)`, *default:* `nil`) - FleetConfig contains a list of Agones fleet specs. Only one FleetConfig is allowed.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels associated with this game server config. Each label is a key-value pair.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the game server config, in the following form: `projects/{project}/locations/{location}/gameServerDeployments/{deployment}/configs/{config}`. For example, `projects/my-project/locations/global/gameServerDeployments/my-game/configs/my-config`.
  *   `scalingConfigs` (*type:* `list(GoogleApi.GameServices.V1.Model.ScalingConfig.t)`, *default:* `nil`) - The autoscaling settings.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :fleetConfigs => list(GoogleApi.GameServices.V1.Model.FleetConfig.t()) | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :scalingConfigs => list(GoogleApi.GameServices.V1.Model.ScalingConfig.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:fleetConfigs, as: GoogleApi.GameServices.V1.Model.FleetConfig, type: :list)
  field(:labels, type: :map)
  field(:name)
  field(:scalingConfigs, as: GoogleApi.GameServices.V1.Model.ScalingConfig, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.GameServices.V1.Model.GameServerConfig do
  def decode(value, options) do
    GoogleApi.GameServices.V1.Model.GameServerConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GameServices.V1.Model.GameServerConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
