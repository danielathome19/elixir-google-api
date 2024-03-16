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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CountChromeCrashEventsResponse do
  @moduledoc """
  Response contains a list of CrashEventCountByVersionPerDay which count the chrome crash at the certain date.

  ## Attributes

  *   `crashEventCounts` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount.t)`, *default:* `nil`) - Crash event counts grouped by date and browser version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :crashEventCounts =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount.t()
            )
            | nil
        }

  field(:crashEventCounts,
    as:
      GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CountChromeCrashEventsResponseCrashEventCount,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CountChromeCrashEventsResponse do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CountChromeCrashEventsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1CountChromeCrashEventsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
