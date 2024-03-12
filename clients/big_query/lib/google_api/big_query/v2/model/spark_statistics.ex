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

defmodule GoogleApi.BigQuery.V2.Model.SparkStatistics do
  @moduledoc """
  Statistics for a BigSpark query. Populated as part of JobStatistics2

  ## Attributes

  *   `endpoints` (*type:* `map()`, *default:* `nil`) - Output only. Endpoints returned from Dataproc. Key list: - history_server_endpoint: A link to Spark job UI.
  *   `gcsStagingBucket` (*type:* `String.t`, *default:* `nil`) - Output only. The Google Cloud Storage bucket that is used as the default file system by the Spark application. This field is only filled when the Spark procedure uses the invoker security mode. The `gcsStagingBucket` bucket is inferred from the `@@spark_proc_properties.staging_bucket` system variable (if it is provided). Otherwise, BigQuery creates a default staging bucket for the job and returns the bucket name in this field. Example: * `gs://[bucket_name]`
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Output only. The Cloud KMS encryption key that is used to protect the resources created by the Spark job. If the Spark procedure uses the invoker security mode, the Cloud KMS encryption key is either inferred from the provided system variable, `@@spark_proc_properties.kms_key_name`, or the default key of the BigQuery job's project (if the CMEK organization policy is enforced). Otherwise, the Cloud KMS key is either inferred from the Spark connection associated with the procedure (if it is provided), or from the default key of the Spark connection's project if the CMEK organization policy is enforced. Example: * `projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]`
  *   `loggingInfo` (*type:* `GoogleApi.BigQuery.V2.Model.SparkLoggingInfo.t`, *default:* `nil`) - Output only. Logging info is used to generate a link to Cloud Logging.
  *   `sparkJobId` (*type:* `String.t`, *default:* `nil`) - Output only. Spark job ID if a Spark job is created successfully.
  *   `sparkJobLocation` (*type:* `String.t`, *default:* `nil`) - Output only. Location where the Spark job is executed. A location is selected by BigQueury for jobs configured to run in a multi-region.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpoints => map() | nil,
          :gcsStagingBucket => String.t() | nil,
          :kmsKeyName => String.t() | nil,
          :loggingInfo => GoogleApi.BigQuery.V2.Model.SparkLoggingInfo.t() | nil,
          :sparkJobId => String.t() | nil,
          :sparkJobLocation => String.t() | nil
        }

  field(:endpoints, type: :map)
  field(:gcsStagingBucket)
  field(:kmsKeyName)
  field(:loggingInfo, as: GoogleApi.BigQuery.V2.Model.SparkLoggingInfo)
  field(:sparkJobId)
  field(:sparkJobLocation)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.SparkStatistics do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.SparkStatistics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.SparkStatistics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
