Unreleased Changes
------------------

1.140.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.139.0 (2025-06-26)
------------------

* Feature - Updated modifyStreamingProperties to support PrivateLink VPC endpoints for directories

1.138.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.137.0 (2025-05-15)
------------------

* Feature - Added the new AlwaysOn running mode for WorkSpaces Pools. Customers can now choose between AlwaysOn (for instant access, with hourly usage billing regardless of connection status), or AutoStop (to optimize cost, with a brief startup delay) for their pools.

1.136.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.135.0 (2025-05-09)
------------------

* Feature - Remove parameter EnableWorkDocs from WorkSpacesServiceModel due to end of support of Amazon WorkDocs service.

1.134.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.133.0 (2025-03-06)
------------------

* Feature - Added a new ModifyEndpointEncryptionMode API for managing endpoint encryption settings.

1.132.0 (2025-03-05)
------------------

* Feature - Added DeviceTypeWorkSpacesThinClient type to allow users to access their WorkSpaces through a WorkSpaces Thin Client.

1.131.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.130.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.129.0 (2025-01-15)
------------------

* Feature - Added GeneralPurpose.4xlarge & GeneralPurpose.8xlarge ComputeTypes.

1.128.0 (2024-12-19)
------------------

* Feature - Added AWS Global Accelerator (AGA) support for WorkSpaces Personal.

1.127.0 (2024-12-09)
------------------

* Feature - Added text to clarify case-sensitivity

1.126.0 (2024-11-22)
------------------

* Feature - While integrating WSP-DCV rebrand, a few mentions were erroneously renamed from WSP to DCV. This release reverts those mentions back to WSP.

1.125.0 (2024-11-20)
------------------

* Feature - Added support for Rocky Linux 8 on Amazon WorkSpaces Personal.

1.124.0 (2024-11-19)
------------------

* Feature - Releasing new ErrorCodes for Image Validation failure during CreateWorkspaceImage process

1.123.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.122.0 (2024-10-17)
------------------

* Feature - Updated the DomainName pattern for Active Directory

1.121.0 (2024-10-02)
------------------

* Feature - WSP is being rebranded to become DCV.

1.120.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.119.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.118.0 (2024-09-20)
------------------

* Feature - Releasing new ErrorCodes for SysPrep failures during ImageImport and CreateImage process

1.117.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.116.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.115.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.114.0 (2024-08-28)
------------------

* Feature - Documentation-only update that clarifies the StartWorkspaces and StopWorkspaces actions, and a few other minor edits.

1.113.0 (2024-08-26)
------------------

* Feature - This release adds support for creating and managing directories that use AWS IAM Identity Center as user identity source. Such directories can be used to create non-Active Directory domain joined WorkSpaces Personal.Updated RegisterWorkspaceDirectory and DescribeWorkspaceDirectories APIs.

1.112.0 (2024-08-06)
------------------

* Feature - Added support for BYOL_GRAPHICS_G4DN_WSP IngestionProcess

1.111.0 (2024-07-30)
------------------

* Feature - Removing multi-session as it isn't supported for pools

1.110.0 (2024-07-03)
------------------

* Feature - Fix create workspace bundle RootStorage/UserStorage to accept non null values

1.109.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.108.0 (2024-06-28)
------------------

* Feature - Added support for Red Hat Enterprise Linux 8 on Amazon WorkSpaces Personal.

1.107.0 (2024-06-27)
------------------

* Feature - Added support for WorkSpaces Pools.

1.106.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.105.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.104.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.103.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.102.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.101.0 (2024-04-18)
------------------

* Feature - Adds new APIs for managing and sharing WorkSpaces BYOL configuration across accounts.

1.100.0 (2024-03-07)
------------------

* Feature - Added note for user decoupling

1.99.0 (2024-02-08)
------------------

* Feature - This release introduces User-Decoupling feature. This feature allows Workspaces Core customers to provision workspaces without providing users. CreateWorkspaces and DescribeWorkspaces APIs will now take a new optional parameter "WorkspaceName".

1.98.0 (2024-02-05)
------------------

* Feature - Added definitions of various WorkSpace states

1.97.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.96.0 (2024-01-11)
------------------

* Feature - Added AWS Workspaces RebootWorkspaces API - Extended Reboot documentation update

1.95.0 (2023-12-14)
------------------

* Feature - Updated note to ensure customers understand running modes.

1.94.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.93.0 (2023-11-27)
------------------

* Feature - The release introduces Multi-Region Resilience one-way data replication that allows you to replicate data from your primary WorkSpace to a standby WorkSpace in another AWS Region. DescribeWorkspaces now returns the status of data replication.

1.92.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2023-10-19)
------------------

* Feature - Documentation updates for WorkSpaces

1.90.0 (2023-10-12)
------------------

* Feature - Updated the CreateWorkspaces action documentation to clarify that the PCoIP protocol is only available for Windows bundles.

1.89.0 (2023-10-05)
------------------

* Feature - This release introduces Manage applications. This feature allows users to manage their WorkSpaces applications by associating or disassociating their WorkSpaces with applications. The DescribeWorkspaces API will now additionally return OperatingSystemName in its responses.

1.88.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.87.0 (2023-09-08)
------------------

* Feature - A new field "ErrorDetails" will be added to the output of "DescribeWorkspaceImages" API call. This field provides in-depth details about the error occurred during image import process. These details include the possible causes of the errors and troubleshooting information.

1.86.0 (2023-07-21)
------------------

* Feature - Fixed VolumeEncryptionKey descriptions

1.85.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.84.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.82.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.81.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.80.0 (2023-04-28)
------------------

* Feature - Added Windows 11 to support Microsoft_Office_2019

1.79.0 (2023-02-09)
------------------

* Feature - Removed Windows Server 2016 BYOL and made changes based on IAM campaign.

1.78.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.77.0 (2022-11-17)
------------------

* Feature - The release introduces CreateStandbyWorkspaces, an API that allows you to create standby WorkSpaces associated with a primary WorkSpace in another Region. DescribeWorkspaces now includes related WorkSpaces properties. DescribeWorkspaceBundles and CreateWorkspaceBundle now return more bundle details.

1.76.0 (2022-11-15)
------------------

* Feature - This release introduces ModifyCertificateBasedAuthProperties, a new API that allows control of certificate-based auth properties associated with a WorkSpaces directory. The DescribeWorkspaceDirectories API will now additionally return certificate-based auth properties in its responses.

1.75.0 (2022-11-07)
------------------

* Feature - This release adds protocols attribute to workspaces properties data type. This enables customers to migrate workspaces from PC over IP (PCoIP) to WorkSpaces Streaming Protocol (WSP) using create and modify workspaces public APIs.

1.74.0 (2022-10-25)
------------------

* Feature - This release adds new enums for supporting Workspaces Core features, including creating Manual running mode workspaces, importing regular Workspaces Core images and importing g4dn Workspaces Core images.

1.73.0 (2022-09-29)
------------------

* Feature - This release includes diagnostic log uploading feature. If it is enabled, the log files of WorkSpaces Windows client will be sent to Amazon WorkSpaces automatically for troubleshooting. You can use modifyClientProperty api to enable/disable this feature.

1.72.0 (2022-08-01)
------------------

* Feature - This release introduces ModifySamlProperties, a new API that allows control of SAML properties associated with a WorkSpaces directory. The DescribeWorkspaceDirectories API will now additionally return SAML properties in its responses.

1.71.0 (2022-07-27)
------------------

* Feature - Added CreateWorkspaceImage API to create a new WorkSpace image from an existing WorkSpace.

1.70.0 (2022-07-19)
------------------

* Feature - Increased the character limit of the login message from 850 to 2000 characters.

1.69.0 (2022-06-15)
------------------

* Feature - Added new field "reason" to OperationNotSupportedException. Receiving this exception in the DeregisterWorkspaceDirectory API will now return a reason giving more context on the failure.

1.68.0 (2022-05-12)
------------------

* Feature - Increased the character limit of the login message from 600 to 850 characters.

1.67.0 (2022-04-11)
------------------

* Feature - Added API support that allows customers to create GPU-enabled WorkSpaces using EC2 G4dn instances.

1.66.0 (2022-03-31)
------------------

* Feature - Added APIs that allow you to customize the logo, login message, and help links in the WorkSpaces client login page. To learn more, visit https://docs.aws.amazon.com/workspaces/latest/adminguide/customize-branding.html

1.65.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.64.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.63.0 (2022-01-11)
------------------

* Feature - Introducing new APIs for Workspaces audio optimization with Amazon Connect: CreateConnectClientAddIn, DescribeConnectClientAddIns, UpdateConnectClientAddIn and DeleteConnectClientAddIn.

1.62.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.61.0 (2021-11-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2021-11-23)
------------------

* Feature - Documentation updates for Amazon WorkSpaces

1.59.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.58.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.57.0 (2021-09-30)
------------------

* Feature - Added CreateUpdatedWorkspaceImage API to update WorkSpace images with latest software and drivers. Updated DescribeWorkspaceImages API to display if there are updates available for WorkSpace images.

1.56.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.55.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.54.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.53.0 (2021-05-25)
------------------

* Feature - Adds support for Linux device types in WorkspaceAccessProperties

1.52.0 (2021-03-12)
------------------

* Feature - Adds API support for WorkSpaces bundle management operations.

1.51.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.50.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2020-12-04)
------------------

* Feature - Update the import-workspace-image API to have "BYOL_REGULAR_WSP" as a valid input string for ingestion-process.

1.48.0 (2020-10-15)
------------------

* Feature - Documentation updates for WorkSpaces

1.47.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.45.0 (2020-09-11)
------------------

* Feature - Adds API support for WorkSpaces Cross-Region Redirection feature.

1.44.0 (2020-09-04)
------------------

* Feature - Adding support for Microsoft Office 2016 and Microsoft Office 2019 in BYOL Images

1.43.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.42.0 (2020-08-12)
------------------

* Feature - Adds optional EnableWorkDocs property to WorkspaceCreationProperties in the ModifyWorkspaceCreationProperties API

1.41.0 (2020-07-23)
------------------

* Feature - Added UpdateWorkspaceImagePermission API to share Amazon WorkSpaces images across AWS accounts.

1.40.0 (2020-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.38.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.37.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.36.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.35.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2020-01-24)
------------------

* Feature - Documentation updates for WorkSpaces

1.33.0 (2020-01-10)
------------------

* Feature - Added the migrate feature to Amazon WorkSpaces.

1.32.0 (2019-11-26)
------------------

* Feature - For the WorkspaceBundle API, added the image identifier and the time of the last update.

1.31.0 (2019-11-15)
------------------

* Feature - Added APIs to register your directories with Amazon WorkSpaces and to modify directory details.

1.30.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2019-10-14)
------------------

* Feature - Documentation updates for WorkSpaces

1.28.0 (2019-09-20)
------------------

* Feature - Adds the WorkSpaces restore feature

1.27.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.26.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.25.0 (2019-06-28)
------------------

* Feature - Minor API fixes for WorkSpaces.

1.24.0 (2019-06-27)
------------------

* Feature - Added support for the WorkSpaces restore feature and copying WorkSpaces Images across AWS Regions.

1.23.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.22.0 (2019-05-21)
------------------

* Feature - API update.

1.21.0 (2019-05-15)
------------------

* Feature - API update.

1.20.0 (2019-05-14)
------------------

* Feature - API update.

1.19.0 (2019-04-25)
------------------

* Feature - API update.

1.18.0 (2019-04-19)
------------------

* Feature - API update.

1.17.0 (2019-04-18)
------------------

* Feature - API update.

1.16.0 (2019-03-28)
------------------

* Feature - API update.

1.15.0 (2019-03-21)
------------------

* Feature - API update.

1.14.0 (2019-03-18)
------------------

* Feature - API update.

1.13.0 (2019-03-14)
------------------

* Feature - API update.

1.12.0 (2019-02-04)
------------------

* Feature - API update.

1.11.0 (2018-11-20)
------------------

* Feature - API update.

1.10.0 (2018-11-19)
------------------

* Feature - API update.

1.9.0 (2018-11-16)
------------------

* Feature - API update.

1.8.0 (2018-10-24)
------------------

* Feature - API update.

1.7.0 (2018-10-23)
------------------

* Feature - API update.

1.6.0 (2018-10-19)
------------------

* Feature - API update.

1.5.0 (2018-09-06)
------------------

* Feature - Adds code paths and plugins for future SDK instrumentation and telemetry.

1.4.0 (2018-09-05)
------------------

* Feature - API update.

1.3.0 (2018-06-26)
------------------

* Feature - API update.

1.2.0 (2018-04-30)
------------------

* Feature - API update.

1.1.0 (2017-12-29)
------------------

* Feature - API update.

* Issue - Update `aws-sdk-workspaces` gemspec metadata.

1.0.0 (2017-08-29)
------------------

1.0.0.rc10 (2017-08-15)
------------------

* Feature - API update.

1.0.0.rc9 (2017-08-01)
------------------

* Feature - API update.

1.0.0.rc8 (2017-07-25)
------------------

* Feature - API update.

1.0.0.rc7 (2017-07-13)
------------------

* Feature - API update.

1.0.0.rc6 (2017-07-06)
------------------

* Feature - API update.

1.0.0.rc5 (2017-06-29)
------------------

* Feature - API update.

1.0.0.rc4 (2017-05-23)
------------------

* Feature - API update.

1.0.0.rc3 (2017-05-09)
------------------

* Feature - API update.

1.0.0.rc2 (2017-04-21)
------------------

* Feature - API update.

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-workspaces` gem.
