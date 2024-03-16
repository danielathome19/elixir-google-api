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

defmodule GoogleApi.BigQuery.V2.Model.JobConfigurationLoad do
  @moduledoc """
  JobConfigurationLoad contains the configuration properties for loading data into a destination table.

  ## Attributes

  *   `sourceUris` (*type:* `list(String.t)`, *default:* `nil`) - [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  *   `schemaInlineFormat` (*type:* `String.t`, *default:* `nil`) - [Deprecated] The format of the schemaInline property.
  *   `hivePartitioningOptions` (*type:* `GoogleApi.BigQuery.V2.Model.HivePartitioningOptions.t`, *default:* `nil`) - Optional. When set, configures hive partitioning support. Not all storage formats support hive partitioning -- requesting hive partitioning on an unsupported format will lead to an error, as will providing an invalid specification.
  *   `destinationEncryptionConfiguration` (*type:* `GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t`, *default:* `nil`) - Custom encryption configuration (e.g., Cloud KMS keys)
  *   `schemaUpdateOptions` (*type:* `list(String.t)`, *default:* `nil`) - Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: * ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. * ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  *   `fieldDelimiter` (*type:* `String.t`, *default:* `nil`) - Optional. The separator character for fields in a CSV file. The separator is interpreted as a single byte. For files encoded in ISO-8859-1, any single character can be used as a separator. For files encoded in UTF-8, characters represented in decimal range 1-127 (U+0001-U+007F) can be used without any modification. UTF-8 characters encoded with multiple bytes (i.e. U+0080 and above) will have only the first byte used for separating fields. The remaining bytes will be treated as a part of the field. BigQuery also supports the escape sequence "\\t" (U+0009) to specify a tab separator. The default value is comma (",", U+002C).
  *   `createDisposition` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies whether the job is allowed to create new tables. The following values are supported: * CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. * CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  *   `schemaInline` (*type:* `String.t`, *default:* `nil`) - [Deprecated] The inline schema. For CSV schemas, specify as "Field1:Type1[,Field2:Type2]*". For example, "foo:STRING, bar:INTEGER, baz:FLOAT".
  *   `jsonExtension` (*type:* `String.t`, *default:* `nil`) - Optional. Load option to be used together with source_format newline-delimited JSON to indicate that a variant of JSON is being loaded. To load newline-delimited GeoJSON, specify GEOJSON (and source_format must be set to NEWLINE_DELIMITED_JSON).
  *   `allowQuotedNewlines` (*type:* `boolean()`, *default:* `nil`) - Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  *   `autodetect` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates if we should automatically infer the options and schema for CSV and JSON sources.
  *   `clustering` (*type:* `GoogleApi.BigQuery.V2.Model.Clustering.t`, *default:* `nil`) - Clustering specification for the destination table.
  *   `timePartitioning` (*type:* `GoogleApi.BigQuery.V2.Model.TimePartitioning.t`, *default:* `nil`) - Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
  *   `referenceFileSchemaUri` (*type:* `String.t`, *default:* `nil`) - Optional. The user can provide a reference file with the reader schema. This file is only loaded if it is part of source URIs, but is not loaded otherwise. It is enabled for the following formats: AVRO, PARQUET, ORC.
  *   `maxBadRecords` (*type:* `integer()`, *default:* `nil`) - Optional. The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value, an invalid error is returned in the job result. The default value is 0, which requires that all records are valid. This is only supported for CSV and NEWLINE_DELIMITED_JSON file formats.
  *   `preserveAsciiControlCharacters` (*type:* `boolean()`, *default:* `nil`) - Optional. When sourceFormat is set to "CSV", this indicates whether the embedded ASCII control characters (the first 32 characters in the ASCII-table, from '\\x00' to '\\x1F') are preserved.
  *   `encoding` (*type:* `String.t`, *default:* `nil`) - Optional. The character encoding of the data. The supported values are UTF-8, ISO-8859-1, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the `quote` and `fieldDelimiter` properties. If you don't specify an encoding, or if you specify a UTF-8 encoding when the CSV file is not UTF-8 encoded, BigQuery attempts to convert the data to UTF-8. Generally, your data loads successfully, but it may not match byte-for-byte what you expect. To avoid this, specify the correct encoding by using the `--encoding` flag. If BigQuery can't convert a character other than the ASCII `0` character, BigQuery converts the character to the standard Unicode replacement character: �.
  *   `fileSetSpecType` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies how source URIs are interpreted for constructing the file set to load. By default, source URIs are expanded against the underlying storage. You can also specify manifest files to control how the file set is constructed. This option is only applicable to object storage systems.
  *   `schema` (*type:* `GoogleApi.BigQuery.V2.Model.TableSchema.t`, *default:* `nil`) - Optional. The schema for the destination table. The schema can be omitted if the destination table already exists, or if you're loading data from Google Cloud Datastore.
  *   `projectionFields` (*type:* `list(String.t)`, *default:* `nil`) - If sourceFormat is set to "DATASTORE_BACKUP", indicates which entity properties to load into BigQuery from a Cloud Datastore backup. Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties. If any named property isn't found in the Cloud Datastore backup, an invalid error is returned in the job result.
  *   `nullMarker` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies a string that represents a null value in a CSV file. For example, if you specify "\\N", BigQuery interprets "\\N" as a null value when loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as an empty value.
  *   `useAvroLogicalTypes` (*type:* `boolean()`, *default:* `nil`) - Optional. If sourceFormat is set to "AVRO", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
  *   `writeDisposition` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the action that occurs if the destination table already exists. The following values are supported: * WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the data, removes the constraints and uses the schema from the load job. * WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. * WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_APPEND. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  *   `ignoreUnknownValues` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names in the table schema Avro, Parquet, ORC: Fields in the file schema that don't exist in the table schema.
  *   `allowJaggedRows` (*type:* `boolean()`, *default:* `nil`) - Optional. Accept rows that are missing trailing optional columns. The missing values are treated as nulls. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats.
  *   `quote` (*type:* `String.t`, *default:* `"`) - Optional. The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true. To include the specific quote character within a quoted value, precede it with an additional matching quote character. For example, if you want to escape the default character ' " ', use ' "" '. @default "
  *   `skipLeadingRows` (*type:* `integer()`, *default:* `nil`) - Optional. The number of rows at the top of a CSV file that BigQuery will skip when loading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. When autodetect is on, the behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema.
  *   `rangePartitioning` (*type:* `GoogleApi.BigQuery.V2.Model.RangePartitioning.t`, *default:* `nil`) - Range partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
  *   `createSession` (*type:* `boolean()`, *default:* `nil`) - Optional. If this property is true, the job creates a new session using a randomly generated session_id. To continue using a created session with subsequent queries, pass the existing session identifier as a `ConnectionProperty` value. The session identifier is returned as part of the `SessionInfo` message within the query statistics. The new session's location will be set to `Job.JobReference.location` if it is present, otherwise it's set to the default location based on existing routing logic.
  *   `destinationTable` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - [Required] The destination table to load the data into.
  *   `sourceFormat` (*type:* `String.t`, *default:* `nil`) - Optional. The format of the data files. For CSV files, specify "CSV". For datastore backups, specify "DATASTORE_BACKUP". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro, specify "AVRO". For parquet, specify "PARQUET". For orc, specify "ORC". The default value is CSV.
  *   `destinationTableProperties` (*type:* `GoogleApi.BigQuery.V2.Model.DestinationTableProperties.t`, *default:* `nil`) - Optional. [Experimental] Properties with which to create the destination table if it is new.
  *   `parquetOptions` (*type:* `GoogleApi.BigQuery.V2.Model.ParquetOptions.t`, *default:* `nil`) - Optional. Additional properties to set if sourceFormat is set to PARQUET.
  *   `decimalTargetTypes` (*type:* `list(String.t)`, *default:* `nil`) - Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is: * (38,9) -> NUMERIC; * (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); * (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); * (76,38) -> BIGNUMERIC; * (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  *   `copyFilesOnly` (*type:* `boolean()`, *default:* `nil`) - Optional. [Experimental] Configures the load job to only copy files to the destination BigLake managed table with an external storage_uri, without reading file content and writing them to new files. Copying files only is supported when: * source_uris are in the same external storage system as the destination table but they do not overlap with storage_uri of the destination table. * source_format is the same file format as the destination table. * destination_table is an existing BigLake managed table. Its schema does not have default value expression. It schema does not have type parameters other than precision and scale. * No options other than the above are specified.
  *   `connectionProperties` (*type:* `list(GoogleApi.BigQuery.V2.Model.ConnectionProperty.t)`, *default:* `nil`) - Optional. Connection properties which can modify the load job behavior. Currently, only the 'session_id' connection property is supported, and is used to resolve _SESSION appearing as the dataset id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sourceUris => list(String.t()) | nil,
          :schemaInlineFormat => String.t() | nil,
          :hivePartitioningOptions =>
            GoogleApi.BigQuery.V2.Model.HivePartitioningOptions.t() | nil,
          :destinationEncryptionConfiguration =>
            GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t() | nil,
          :schemaUpdateOptions => list(String.t()) | nil,
          :fieldDelimiter => String.t() | nil,
          :createDisposition => String.t() | nil,
          :schemaInline => String.t() | nil,
          :jsonExtension => String.t() | nil,
          :allowQuotedNewlines => boolean() | nil,
          :autodetect => boolean() | nil,
          :clustering => GoogleApi.BigQuery.V2.Model.Clustering.t() | nil,
          :timePartitioning => GoogleApi.BigQuery.V2.Model.TimePartitioning.t() | nil,
          :referenceFileSchemaUri => String.t() | nil,
          :maxBadRecords => integer() | nil,
          :preserveAsciiControlCharacters => boolean() | nil,
          :encoding => String.t() | nil,
          :fileSetSpecType => String.t() | nil,
          :schema => GoogleApi.BigQuery.V2.Model.TableSchema.t() | nil,
          :projectionFields => list(String.t()) | nil,
          :nullMarker => String.t() | nil,
          :useAvroLogicalTypes => boolean() | nil,
          :writeDisposition => String.t() | nil,
          :ignoreUnknownValues => boolean() | nil,
          :allowJaggedRows => boolean() | nil,
          :quote => String.t() | nil,
          :skipLeadingRows => integer() | nil,
          :rangePartitioning => GoogleApi.BigQuery.V2.Model.RangePartitioning.t() | nil,
          :createSession => boolean() | nil,
          :destinationTable => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil,
          :sourceFormat => String.t() | nil,
          :destinationTableProperties =>
            GoogleApi.BigQuery.V2.Model.DestinationTableProperties.t() | nil,
          :parquetOptions => GoogleApi.BigQuery.V2.Model.ParquetOptions.t() | nil,
          :decimalTargetTypes => list(String.t()) | nil,
          :copyFilesOnly => boolean() | nil,
          :connectionProperties => list(GoogleApi.BigQuery.V2.Model.ConnectionProperty.t()) | nil
        }

  field(:sourceUris, type: :list)
  field(:schemaInlineFormat)
  field(:hivePartitioningOptions, as: GoogleApi.BigQuery.V2.Model.HivePartitioningOptions)

  field(:destinationEncryptionConfiguration,
    as: GoogleApi.BigQuery.V2.Model.EncryptionConfiguration
  )

  field(:schemaUpdateOptions, type: :list)
  field(:fieldDelimiter)
  field(:createDisposition)
  field(:schemaInline)
  field(:jsonExtension)
  field(:allowQuotedNewlines)
  field(:autodetect)
  field(:clustering, as: GoogleApi.BigQuery.V2.Model.Clustering)
  field(:timePartitioning, as: GoogleApi.BigQuery.V2.Model.TimePartitioning)
  field(:referenceFileSchemaUri)
  field(:maxBadRecords)
  field(:preserveAsciiControlCharacters)
  field(:encoding)
  field(:fileSetSpecType)
  field(:schema, as: GoogleApi.BigQuery.V2.Model.TableSchema)
  field(:projectionFields, type: :list)
  field(:nullMarker)
  field(:useAvroLogicalTypes)
  field(:writeDisposition)
  field(:ignoreUnknownValues)
  field(:allowJaggedRows)
  field(:quote)
  field(:skipLeadingRows)
  field(:rangePartitioning, as: GoogleApi.BigQuery.V2.Model.RangePartitioning)
  field(:createSession)
  field(:destinationTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:sourceFormat)
  field(:destinationTableProperties, as: GoogleApi.BigQuery.V2.Model.DestinationTableProperties)
  field(:parquetOptions, as: GoogleApi.BigQuery.V2.Model.ParquetOptions)
  field(:decimalTargetTypes, type: :list)
  field(:copyFilesOnly)
  field(:connectionProperties, as: GoogleApi.BigQuery.V2.Model.ConnectionProperty, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationLoad do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobConfigurationLoad.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationLoad do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
