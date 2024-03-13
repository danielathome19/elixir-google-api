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

defmodule GoogleApi.CloudFunctions.V2.Model.BuildConfig do
  @moduledoc """
  Describes the Build step of the function that builds a container from the given source.

  ## Attributes

  *   `automaticUpdatePolicy` (*type:* `GoogleApi.CloudFunctions.V2.Model.AutomaticUpdatePolicy.t`, *default:* `nil`) - 
  *   `build` (*type:* `String.t`, *default:* `nil`) - Output only. The Cloud Build name of the latest successful deployment of the function.
  *   `dockerRegistry` (*type:* `String.t`, *default:* `nil`) - Docker Registry to use for this deployment. This configuration is only applicable to 1st Gen functions, 2nd Gen functions can only use Artifact Registry. If unspecified, it defaults to `ARTIFACT_REGISTRY`. If `docker_repository` field is specified, this field should either be left unspecified or set to `ARTIFACT_REGISTRY`.
  *   `dockerRepository` (*type:* `String.t`, *default:* `nil`) - Repository in Artifact Registry to which the function docker image will be pushed after it is built by Cloud Build. If specified by user, it is created and managed by user with a customer managed encryption key. Otherwise, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  *   `entryPoint` (*type:* `String.t`, *default:* `nil`) - The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function". For Node.js this is name of a function exported by the module specified in `source_location`.
  *   `environmentVariables` (*type:* `map()`, *default:* `nil`) - User-provided build-time environment variables for the function
  *   `onDeployUpdatePolicy` (*type:* `GoogleApi.CloudFunctions.V2.Model.OnDeployUpdatePolicy.t`, *default:* `nil`) - 
  *   `runtime` (*type:* `String.t`, *default:* `nil`) - The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - [Preview] Service account to be used for building the container
  *   `source` (*type:* `GoogleApi.CloudFunctions.V2.Model.Source.t`, *default:* `nil`) - The location of the function source code.
  *   `sourceProvenance` (*type:* `GoogleApi.CloudFunctions.V2.Model.SourceProvenance.t`, *default:* `nil`) - Output only. A permanent fixed identifier for source.
  *   `sourceToken` (*type:* `String.t`, *default:* `nil`) - An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  *   `workerPool` (*type:* `String.t`, *default:* `nil`) - Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where {project} and {region} are the project id and region respectively where the worker pool is defined and {workerPool} is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (service-@gcf-admin-robot.iam.gserviceaccount.com) must be granted the role Cloud Build Custom Workers Builder (roles/cloudbuild.customworkers.builder) in the project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automaticUpdatePolicy =>
            GoogleApi.CloudFunctions.V2.Model.AutomaticUpdatePolicy.t() | nil,
          :build => String.t() | nil,
          :dockerRegistry => String.t() | nil,
          :dockerRepository => String.t() | nil,
          :entryPoint => String.t() | nil,
          :environmentVariables => map() | nil,
          :onDeployUpdatePolicy =>
            GoogleApi.CloudFunctions.V2.Model.OnDeployUpdatePolicy.t() | nil,
          :runtime => String.t() | nil,
          :serviceAccount => String.t() | nil,
          :source => GoogleApi.CloudFunctions.V2.Model.Source.t() | nil,
          :sourceProvenance => GoogleApi.CloudFunctions.V2.Model.SourceProvenance.t() | nil,
          :sourceToken => String.t() | nil,
          :workerPool => String.t() | nil
        }

  field(:automaticUpdatePolicy, as: GoogleApi.CloudFunctions.V2.Model.AutomaticUpdatePolicy)
  field(:build)
  field(:dockerRegistry)
  field(:dockerRepository)
  field(:entryPoint)
  field(:environmentVariables, type: :map)
  field(:onDeployUpdatePolicy, as: GoogleApi.CloudFunctions.V2.Model.OnDeployUpdatePolicy)
  field(:runtime)
  field(:serviceAccount)
  field(:source, as: GoogleApi.CloudFunctions.V2.Model.Source)
  field(:sourceProvenance, as: GoogleApi.CloudFunctions.V2.Model.SourceProvenance)
  field(:sourceToken)
  field(:workerPool)
end

defimpl Poison.Decoder, for: GoogleApi.CloudFunctions.V2.Model.BuildConfig do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V2.Model.BuildConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudFunctions.V2.Model.BuildConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
