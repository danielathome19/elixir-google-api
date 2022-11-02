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

defmodule GoogleApi.Drive.V3.Model.File do
  @moduledoc """
  The metadata for a file.

  ## Attributes

  *   `shortcutDetails` (*type:* `GoogleApi.Drive.V3.Model.FileShortcutDetails.t`, *default:* `nil`) - Shortcut file details. Only populated for shortcut files, which have the mimeType field set to application/vnd.google-apps.shortcut.
  *   `modifiedByMe` (*type:* `boolean()`, *default:* `nil`) - Whether the file has been modified by this user.
  *   `fullFileExtension` (*type:* `String.t`, *default:* `nil`) - The full file extension extracted from the name field. May contain multiple concatenated extensions, such as "tar.gz". This is only available for files with binary content in Google Drive.
      This is automatically updated when the name field changes, however it isn't cleared if the new name does not contain a valid extension.
  *   `folderColorRgb` (*type:* `String.t`, *default:* `nil`) - The color for a folder or shortcut to a folder as an RGB hex string. The supported colors are published in the folderColorPalette field of the About resource.
      If an unsupported color is specified, the closest color in the palette will be used instead.
  *   `resourceKey` (*type:* `String.t`, *default:* `nil`) - A key needed to access the item via a shared link.
  *   `modifiedTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time the file was modified by anyone (RFC 3339 date-time).
      Note that setting modifiedTime will also update modifiedByMeTime for the user.
  *   `contentRestrictions` (*type:* `list(GoogleApi.Drive.V3.Model.ContentRestriction.t)`, *default:* `nil`) - Restrictions for accessing the content of the file. Only populated if such a restriction exists.
  *   `size` (*type:* `String.t`, *default:* `nil`) - The size of the file's content in bytes. This is applicable to binary files in Google Drive and Google Docs files.
  *   `spaces` (*type:* `list(String.t)`, *default:* `nil`) - The list of spaces which contain the file. The currently supported values are 'drive', 'appDataFolder' and 'photos'.
  *   `trashingUser` (*type:* `GoogleApi.Drive.V3.Model.User.t`, *default:* `nil`) - If the file has been explicitly trashed, the user who trashed it. Only populated for items in shared drives.
  *   `ownedByMe` (*type:* `boolean()`, *default:* `nil`) - Whether the user owns the file. Not populated for items in shared drives.
  *   `starred` (*type:* `boolean()`, *default:* `nil`) - Whether the user has starred the file.
  *   `viewersCanCopyContent` (*type:* `boolean()`, *default:* `nil`) - Deprecated - use copyRequiresWriterPermission instead.
  *   `capabilities` (*type:* `GoogleApi.Drive.V3.Model.FileCapabilities.t`, *default:* `nil`) - Capabilities the current user has on this file. Each capability corresponds to a fine-grained action that a user may take.
  *   `permissions` (*type:* `list(GoogleApi.Drive.V3.Model.Permission.t)`, *default:* `nil`) - The full list of permissions for the file. This is only available if the requesting user can share the file. Not populated for items in shared drives.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A short description of the file.
  *   `kind` (*type:* `String.t`, *default:* `drive#file`) - Identifies what kind of resource this is. Value: the fixed string "drive#file".
  *   `iconLink` (*type:* `String.t`, *default:* `nil`) - A static, unauthenticated link to the file's icon.
  *   `labelInfo` (*type:* `GoogleApi.Drive.V3.Model.FileLabelInfo.t`, *default:* `nil`) - An overview of the labels on the file.
  *   `viewedByMe` (*type:* `boolean()`, *default:* `nil`) - Whether the file has been viewed by this user.
  *   `contentHints` (*type:* `GoogleApi.Drive.V3.Model.FileContentHints.t`, *default:* `nil`) - Additional information about the content of the file. These fields are never populated in responses.
  *   `webContentLink` (*type:* `String.t`, *default:* `nil`) - A link for downloading the content of the file in a browser. This is only available for files with binary content in Google Drive.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the file. This is not necessarily unique within a folder. Note that for immutable items such as the top level folders of shared drives, My Drive root folder, and Application Data folder the name is constant.
  *   `lastModifyingUser` (*type:* `GoogleApi.Drive.V3.Model.User.t`, *default:* `nil`) - The last user to modify the file.
  *   `headRevisionId` (*type:* `String.t`, *default:* `nil`) - The ID of the file's head revision. This is currently only available for files with binary content in Google Drive.
  *   `fileExtension` (*type:* `String.t`, *default:* `nil`) - The final component of fullFileExtension. This is only available for files with binary content in Google Drive.
  *   `properties` (*type:* `map()`, *default:* `nil`) - A collection of arbitrary key-value pairs which are visible to all apps.
      Entries with null values are cleared in update and copy requests.
  *   `version` (*type:* `String.t`, *default:* `nil`) - A monotonically increasing version number for the file. This reflects every change made to the file on the server, even those not visible to the user.
  *   `hasThumbnail` (*type:* `boolean()`, *default:* `nil`) - Whether this file has a thumbnail. This does not indicate whether the requesting app has access to the thumbnail. To check access, look for the presence of the thumbnailLink field.
  *   `thumbnailLink` (*type:* `String.t`, *default:* `nil`) - A short-lived link to the file's thumbnail, if available. Typically lasts on the order of hours. Only populated when the requesting app can access the file's content. If the file isn't shared publicly, the URL returned in Files.thumbnailLink must be fetched using a credentialed request.
  *   `originalFilename` (*type:* `String.t`, *default:* `nil`) - The original filename of the uploaded content if available, or else the original value of the name field. This is only available for files with binary content in Google Drive.
  *   `explicitlyTrashed` (*type:* `boolean()`, *default:* `nil`) - Whether the file has been explicitly trashed, as opposed to recursively trashed from a parent folder.
  *   `sha1Checksum` (*type:* `String.t`, *default:* `nil`) - The SHA1 checksum associated with this file, if available. This field is only populated for files with content stored in Google Drive; it isn't populated for Docs Editors or shortcut files.
  *   `sha256Checksum` (*type:* `String.t`, *default:* `nil`) - The SHA256 checksum associated with this file, if available. This field is only populated for files with content stored in Google Drive; it isn't populated for Docs Editors or shortcut files.
  *   `exportLinks` (*type:* `map()`, *default:* `nil`) - Links for exporting Docs Editors files to specific formats.
  *   `modifiedByMeTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time the file was modified by the user (RFC 3339 date-time).
  *   `quotaBytesUsed` (*type:* `String.t`, *default:* `nil`) - The number of storage quota bytes used by the file. This includes the head revision as well as previous revisions with keepForever enabled.
  *   `owners` (*type:* `list(GoogleApi.Drive.V3.Model.User.t)`, *default:* `nil`) - The owner of this file. Only certain legacy files may have more than one owner. This field isn't populated for items in shared drives.
  *   `driveId` (*type:* `String.t`, *default:* `nil`) - ID of the shared drive the file resides in. Only populated for items in shared drives.
  *   `parents` (*type:* `list(String.t)`, *default:* `nil`) - The IDs of the parent folders which contain the file.
      If not specified as part of a create request, the file will be placed directly in the user's My Drive folder. If not specified as part of a copy request, the file will inherit any discoverable parents of the source file. Update requests must use the addParents and removeParents parameters to modify the parents list.
  *   `teamDriveId` (*type:* `String.t`, *default:* `nil`) - Deprecated - use driveId instead.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the file.
  *   `shared` (*type:* `boolean()`, *default:* `nil`) - Whether the file has been shared. Not populated for items in shared drives.
  *   `trashed` (*type:* `boolean()`, *default:* `nil`) - Whether the file has been trashed, either explicitly or from a trashed parent folder. Only the owner may trash a file. The trashed item is excluded from all files.list responses returned for any user who does not own the file. However, all users with access to the file can see the trashed item metadata in an API response. All users with access can copy, download, export, and share the file.
  *   `appProperties` (*type:* `map()`, *default:* `nil`) - A collection of arbitrary key-value pairs which are private to the requesting app.
      Entries with null values are cleared in update and copy requests. These properties can only be retrieved using an authenticated request. An authenticated request uses an access token obtained with a OAuth 2 client ID. You cannot use an API key to retrieve private properties.
  *   `isAppAuthorized` (*type:* `boolean()`, *default:* `nil`) - Whether the file was created or opened by the requesting app.
  *   `webViewLink` (*type:* `String.t`, *default:* `nil`) - A link for opening the file in a relevant Google editor or viewer in a browser.
  *   `copyRequiresWriterPermission` (*type:* `boolean()`, *default:* `nil`) - Whether the options to copy, print, or download this file, should be disabled for readers and commenters.
  *   `sharingUser` (*type:* `GoogleApi.Drive.V3.Model.User.t`, *default:* `nil`) - The user who shared the file with the requesting user, if applicable.
  *   `md5Checksum` (*type:* `String.t`, *default:* `nil`) - The MD5 checksum for the content of the file. This is only applicable to files with binary content in Google Drive.
  *   `viewedByMeTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time the file was viewed by the user (RFC 3339 date-time).
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - The MIME type of the file.
      Google Drive will attempt to automatically detect an appropriate value from uploaded content if no value is provided. The value cannot be changed unless a new revision is uploaded.
      If a file is created with a Google Doc MIME type, the uploaded content will be imported if possible. The supported import formats are published in the About resource.
  *   `videoMediaMetadata` (*type:* `GoogleApi.Drive.V3.Model.FileVideoMediaMetadata.t`, *default:* `nil`) - Additional metadata about video media. This may not be available immediately upon upload.
  *   `imageMediaMetadata` (*type:* `GoogleApi.Drive.V3.Model.FileImageMediaMetadata.t`, *default:* `nil`) - Additional metadata about image media, if available.
  *   `thumbnailVersion` (*type:* `String.t`, *default:* `nil`) - The thumbnail version for use in thumbnail cache invalidation.
  *   `createdTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the file was created (RFC 3339 date-time).
  *   `linkShareMetadata` (*type:* `GoogleApi.Drive.V3.Model.FileLinkShareMetadata.t`, *default:* `nil`) - Contains details about the link URLs that clients are using to refer to this item.
  *   `writersCanShare` (*type:* `boolean()`, *default:* `nil`) - Whether users with only writer permission can modify the file's permissions. Not populated for items in shared drives.
  *   `permissionIds` (*type:* `list(String.t)`, *default:* `nil`) - List of permission IDs for users with access to this file.
  *   `trashedTime` (*type:* `DateTime.t`, *default:* `nil`) - The time that the item was trashed (RFC 3339 date-time). Only populated for items in shared drives.
  *   `sharedWithMeTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the file was shared with the user, if applicable (RFC 3339 date-time).
  *   `hasAugmentedPermissions` (*type:* `boolean()`, *default:* `nil`) - Whether there are permissions directly on this file. This field is only populated for items in shared drives.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :shortcutDetails => GoogleApi.Drive.V3.Model.FileShortcutDetails.t() | nil,
          :modifiedByMe => boolean() | nil,
          :fullFileExtension => String.t() | nil,
          :folderColorRgb => String.t() | nil,
          :resourceKey => String.t() | nil,
          :modifiedTime => DateTime.t() | nil,
          :contentRestrictions => list(GoogleApi.Drive.V3.Model.ContentRestriction.t()) | nil,
          :size => String.t() | nil,
          :spaces => list(String.t()) | nil,
          :trashingUser => GoogleApi.Drive.V3.Model.User.t() | nil,
          :ownedByMe => boolean() | nil,
          :starred => boolean() | nil,
          :viewersCanCopyContent => boolean() | nil,
          :capabilities => GoogleApi.Drive.V3.Model.FileCapabilities.t() | nil,
          :permissions => list(GoogleApi.Drive.V3.Model.Permission.t()) | nil,
          :description => String.t() | nil,
          :kind => String.t() | nil,
          :iconLink => String.t() | nil,
          :labelInfo => GoogleApi.Drive.V3.Model.FileLabelInfo.t() | nil,
          :viewedByMe => boolean() | nil,
          :contentHints => GoogleApi.Drive.V3.Model.FileContentHints.t() | nil,
          :webContentLink => String.t() | nil,
          :name => String.t() | nil,
          :lastModifyingUser => GoogleApi.Drive.V3.Model.User.t() | nil,
          :headRevisionId => String.t() | nil,
          :fileExtension => String.t() | nil,
          :properties => map() | nil,
          :version => String.t() | nil,
          :hasThumbnail => boolean() | nil,
          :thumbnailLink => String.t() | nil,
          :originalFilename => String.t() | nil,
          :explicitlyTrashed => boolean() | nil,
          :sha1Checksum => String.t() | nil,
          :sha256Checksum => String.t() | nil,
          :exportLinks => map() | nil,
          :modifiedByMeTime => DateTime.t() | nil,
          :quotaBytesUsed => String.t() | nil,
          :owners => list(GoogleApi.Drive.V3.Model.User.t()) | nil,
          :driveId => String.t() | nil,
          :parents => list(String.t()) | nil,
          :teamDriveId => String.t() | nil,
          :id => String.t() | nil,
          :shared => boolean() | nil,
          :trashed => boolean() | nil,
          :appProperties => map() | nil,
          :isAppAuthorized => boolean() | nil,
          :webViewLink => String.t() | nil,
          :copyRequiresWriterPermission => boolean() | nil,
          :sharingUser => GoogleApi.Drive.V3.Model.User.t() | nil,
          :md5Checksum => String.t() | nil,
          :viewedByMeTime => DateTime.t() | nil,
          :mimeType => String.t() | nil,
          :videoMediaMetadata => GoogleApi.Drive.V3.Model.FileVideoMediaMetadata.t() | nil,
          :imageMediaMetadata => GoogleApi.Drive.V3.Model.FileImageMediaMetadata.t() | nil,
          :thumbnailVersion => String.t() | nil,
          :createdTime => DateTime.t() | nil,
          :linkShareMetadata => GoogleApi.Drive.V3.Model.FileLinkShareMetadata.t() | nil,
          :writersCanShare => boolean() | nil,
          :permissionIds => list(String.t()) | nil,
          :trashedTime => DateTime.t() | nil,
          :sharedWithMeTime => DateTime.t() | nil,
          :hasAugmentedPermissions => boolean() | nil
        }

  field(:shortcutDetails, as: GoogleApi.Drive.V3.Model.FileShortcutDetails)
  field(:modifiedByMe)
  field(:fullFileExtension)
  field(:folderColorRgb)
  field(:resourceKey)
  field(:modifiedTime, as: DateTime)
  field(:contentRestrictions, as: GoogleApi.Drive.V3.Model.ContentRestriction, type: :list)
  field(:size)
  field(:spaces, type: :list)
  field(:trashingUser, as: GoogleApi.Drive.V3.Model.User)
  field(:ownedByMe)
  field(:starred)
  field(:viewersCanCopyContent)
  field(:capabilities, as: GoogleApi.Drive.V3.Model.FileCapabilities)
  field(:permissions, as: GoogleApi.Drive.V3.Model.Permission, type: :list)
  field(:description)
  field(:kind)
  field(:iconLink)
  field(:labelInfo, as: GoogleApi.Drive.V3.Model.FileLabelInfo)
  field(:viewedByMe)
  field(:contentHints, as: GoogleApi.Drive.V3.Model.FileContentHints)
  field(:webContentLink)
  field(:name)
  field(:lastModifyingUser, as: GoogleApi.Drive.V3.Model.User)
  field(:headRevisionId)
  field(:fileExtension)
  field(:properties, type: :map)
  field(:version)
  field(:hasThumbnail)
  field(:thumbnailLink)
  field(:originalFilename)
  field(:explicitlyTrashed)
  field(:sha1Checksum)
  field(:sha256Checksum)
  field(:exportLinks, type: :map)
  field(:modifiedByMeTime, as: DateTime)
  field(:quotaBytesUsed)
  field(:owners, as: GoogleApi.Drive.V3.Model.User, type: :list)
  field(:driveId)
  field(:parents, type: :list)
  field(:teamDriveId)
  field(:id)
  field(:shared)
  field(:trashed)
  field(:appProperties, type: :map)
  field(:isAppAuthorized)
  field(:webViewLink)
  field(:copyRequiresWriterPermission)
  field(:sharingUser, as: GoogleApi.Drive.V3.Model.User)
  field(:md5Checksum)
  field(:viewedByMeTime, as: DateTime)
  field(:mimeType)
  field(:videoMediaMetadata, as: GoogleApi.Drive.V3.Model.FileVideoMediaMetadata)
  field(:imageMediaMetadata, as: GoogleApi.Drive.V3.Model.FileImageMediaMetadata)
  field(:thumbnailVersion)
  field(:createdTime, as: DateTime)
  field(:linkShareMetadata, as: GoogleApi.Drive.V3.Model.FileLinkShareMetadata)
  field(:writersCanShare)
  field(:permissionIds, type: :list)
  field(:trashedTime, as: DateTime)
  field(:sharedWithMeTime, as: DateTime)
  field(:hasAugmentedPermissions)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.File do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.File.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.File do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
