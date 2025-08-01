Unreleased Changes
------------------

1.116.0 (2025-07-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.115.0 (2025-06-25)
------------------

* Feature - Add support for the ability to create Amazon S3 Access Points for Amazon FSx for OpenZFS file systems.

1.114.0 (2025-06-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.113.0 (2025-05-29)
------------------

* Feature - FSx API changes to support the public launch of new Intelligent Tiering storage class on Amazon FSx for Lustre

1.112.0 (2025-05-12)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.111.0 (2025-05-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.110.0 (2025-02-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.109.0 (2025-02-12)
------------------

* Feature - Support for in-place Lustre version upgrades

1.108.0 (2025-02-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.107.0 (2025-01-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.106.0 (2024-12-02)
------------------

* Feature - FSx API changes to support the public launch of the Amazon FSx Intelligent Tiering for OpenZFS storage class.

1.105.0 (2024-11-27)
------------------

* Feature - This release adds EFA support to increase FSx for Lustre file systems' throughput performance to a single client instance. This can be done by specifying EfaEnabled=true at the time of creation of Persistent_2 file systems.

1.104.0 (2024-11-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.103.0 (2024-11-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.102.0 (2024-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.101.0 (2024-09-25)
------------------

* Feature - Doc-only update to address Lustre S3 hard-coded names.

1.100.0 (2024-09-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.99.0 (2024-09-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.98.0 (2024-09-20)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.97.0 (2024-09-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.96.0 (2024-09-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.95.0 (2024-09-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.94.0 (2024-07-09)
------------------

* Feature - Adds support for FSx for NetApp ONTAP 2nd Generation file systems, and FSx for OpenZFS Single AZ HA file systems.

1.93.0 (2024-07-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.92.0 (2024-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.91.0 (2024-06-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.90.0 (2024-06-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.89.0 (2024-06-06)
------------------

* Feature - This release adds support to increase metadata performance on FSx for Lustre file systems beyond the default level provisioned when a file system is created. This can be done by specifying MetadataConfiguration during the creation of Persistent_2 file systems or by updating it on demand.

1.88.0 (2024-06-05)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.87.0 (2024-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.86.0 (2024-04-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.85.0 (2024-03-04)
------------------

* Feature - Added support for creating FSx for NetApp ONTAP file systems with up to 12 HA pairs, delivering up to 72 GB/s of read throughput and 12 GB/s of write throughput.

1.84.0 (2024-01-26)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.83.0 (2023-12-19)
------------------

* Feature - Added support for FSx for OpenZFS on-demand data replication across AWS accounts and/or regions.Added the IncludeShared attribute for DescribeSnapshots.Added the CopyStrategy attribute for OpenZFSVolumeConfiguration.

1.82.0 (2023-11-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.81.0 (2023-11-27)
------------------

* Feature - Added support for FSx for ONTAP scale-out file systems and FlexGroup volumes. Added the HAPairs field and ThroughputCapacityPerHAPair for filesystem. Added AggregateConfiguration (containing Aggregates and ConstituentsPerAggregate) and SizeInBytes for volume.

1.80.0 (2023-11-22)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.79.0 (2023-11-16)
------------------

* Feature - Enables customers to update their PerUnitStorageThroughput on their Lustre file systems.

1.78.0 (2023-10-06)
------------------

* Feature - After performing steps to repair the Active Directory configuration of a file system, use this action to initiate the process of attempting to recover to the file system.

1.77.0 (2023-09-27)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.76.0 (2023-09-08)
------------------

* Feature - Amazon FSx documentation fixes

1.75.0 (2023-08-29)
------------------

* Feature - Documentation updates for project quotas.

1.74.0 (2023-08-09)
------------------

* Feature - For FSx for Lustre, add new data repository task type, RELEASE_DATA_FROM_FILESYSTEM, to release files that have been archived to S3. For FSx for Windows, enable support for configuring and updating SSD IOPS, and for updating storage type. For FSx for OpenZFS, add new deployment type, MULTI_AZ_1.

1.73.0 (2023-07-13)
------------------

* Feature - Amazon FSx for NetApp ONTAP now supports SnapLock, an ONTAP feature that enables you to protect your files in a volume by transitioning them to a write once, read many (WORM) state.

1.72.0 (2023-07-11)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.71.0 (2023-07-06)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.70.0 (2023-06-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.69.0 (2023-06-23)
------------------

* Feature - Update to Amazon FSx documentation.

1.68.0 (2023-06-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.67.0 (2023-06-12)
------------------

* Feature - Amazon FSx for NetApp ONTAP now supports joining a storage virtual machine (SVM) to Active Directory after the SVM has been created.

1.66.0 (2023-05-31)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.65.0 (2023-04-07)
------------------

* Feature - Amazon FSx for Lustre now supports creating data repository associations on Persistent_1 and Scratch_2 file systems.

1.64.0 (2023-01-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

* Issue - Replace runtime endpoint resolution approach with generated ruby code.

1.63.0 (2022-12-23)
------------------

* Feature - Fix a bug where a recent release might break certain existing SDKs.

1.62.0 (2022-11-29)
------------------

* Feature - This release adds support for 4GB/s / 160K PIOPS FSx for ONTAP file systems and 10GB/s / 350K PIOPS FSx for OpenZFS file systems (Single_AZ_2). For FSx for ONTAP, this also adds support for DP volumes, snapshot policy, copy tags to backups, and Multi-AZ route table updates.

1.61.0 (2022-10-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.60.0 (2022-09-29)
------------------

* Feature - This release adds support for Amazon File Cache.

1.59.0 (2022-09-07)
------------------

* Feature - Documentation update for Amazon FSx.

1.58.0 (2022-08-29)
------------------

* Feature - Documentation updates for Amazon FSx for NetApp ONTAP.

1.57.0 (2022-07-29)
------------------

* Feature - Documentation updates for Amazon FSx

1.56.0 (2022-05-25)
------------------

* Feature - This release adds root squash support to FSx for Lustre to restrict root level access from clients by mapping root users to a less-privileged user/group with limited permissions.

1.55.0 (2022-04-13)
------------------

* Feature - This release adds support for deploying FSx for ONTAP file systems in a single Availability Zone.

1.54.0 (2022-04-05)
------------------

* Feature - Provide customers more visibility into file system status by adding new "Misconfigured Unavailable" status for Amazon FSx for Windows File Server.

1.53.0 (2022-03-30)
------------------

* Feature - This release adds support for modifying throughput capacity for FSx for ONTAP file systems.

1.52.0 (2022-03-03)
------------------

* Feature - This release adds support for data repository associations to use root ("/") as the file system path

1.51.0 (2022-02-28)
------------------

* Feature - This release adds support for the following FSx for OpenZFS features: snapshot lifecycle transition messages, force flag for deleting file systems with child resources, LZ4 data compression, custom record sizes, and unsetting volume quotas and reservations.

1.50.0 (2022-02-24)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.49.0 (2022-02-03)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.48.0 (2022-01-25)
------------------

* Feature - This release adds support for growing SSD storage capacity and growing/shrinking SSD IOPS for FSx for ONTAP file systems.

1.47.0 (2021-12-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.46.0 (2021-11-30)
------------------

* Feature - This release adds support for the FSx for OpenZFS file system type, FSx for Lustre file systems with the Persistent_2 deployment type, and FSx for Lustre file systems with Amazon S3 data repository associations and automatic export policies.

1.45.0 (2021-11-04)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.44.0 (2021-10-18)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.43.0 (2021-10-06)
------------------

* Feature - This release adds support for Lustre 2.12 to FSx for Lustre.

1.42.0 (2021-09-02)
------------------

* Feature - Announcing Amazon FSx for NetApp ONTAP, a new service that provides fully managed shared storage in the AWS Cloud with the data access and management capabilities of ONTAP.

1.41.0 (2021-09-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.40.0 (2021-07-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.39.0 (2021-07-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.38.0 (2021-06-08)
------------------

* Feature - This release adds support for auditing end-user access to files, folders, and file shares using Windows event logs, enabling customers to meet their security and compliance needs.

1.37.0 (2021-05-27)
------------------

* Feature - This release adds LZ4 data compression support to FSx for Lustre to reduce storage consumption of both file system storage and file system backups.

1.36.0 (2021-04-12)
------------------

* Feature - Support for cross-region and cross-account backup copies

1.35.0 (2021-03-10)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.34.0 (2021-02-02)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.33.0 (2020-11-24)
------------------

* Feature - This release adds the capability to increase storage capacity of Amazon FSx for Lustre file systems, providing the flexibility to meet evolving storage needs over time.

1.32.0 (2020-11-09)
------------------

* Feature - This release adds support for creating DNS aliases for Amazon FSx for Windows File Server, and using AWS Backup to automate scheduled, policy-driven backup plans for Amazon FSx file systems.

1.31.0 (2020-09-30)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.30.0 (2020-09-15)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.29.0 (2020-08-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.28.0 (2020-08-20)
------------------

* Feature - Documentation updates for Amazon FSx

1.27.0 (2020-08-12)
------------------

* Feature - This release adds the capability to create persistent file systems for throughput-intensive workloads using Hard Disk Drive (HDD) storage and an optional read-only Solid-State Drive (SSD) cache.

1.26.0 (2020-08-05)
------------------

* Feature - Documentation updates for StorageCapacity input value format.

1.25.0 (2020-07-24)
------------------

* Feature - Documentation update for FSx for Lustre

1.24.0 (2020-07-23)
------------------

* Feature - Adds support for AutoImport, a new FSx for Lustre feature that allows customers to configure their FSx file system to automatically update its contents when new objects are added to S3 or existing objects are overwritten.

1.23.0 (2020-06-24)
------------------

* Feature - This release adds the capability to take highly-durable, incremental backups of your FSx for Lustre persistent file systems. This capability makes it easy to further protect your file system data and to meet business and regulatory compliance requirements.

1.22.0 (2020-06-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.21.1 (2020-06-11)
------------------

* Issue - Republish previous version with correct dependency on `aws-sdk-core`.

1.21.0 (2020-06-10)
------------------

* Issue - This version has been yanked. (#2327).
* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.20.0 (2020-06-01)
------------------

* Feature - New capabilities to update storage capacity and throughput capacity of your file systems, providing the flexibility to grow file storage and to scale up or down the available performance as needed to meet evolving storage needs over time.

1.19.0 (2020-05-28)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.18.0 (2020-05-07)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.17.0 (2020-03-26)
------------------

* Feature - This release includes two changes: a new lower-cost, storage type called HDD (Hard Disk Drive), and a new generation of the Single-AZ deployment type called Single AZ 2. The HDD storage type can be selected on Multi AZ 1 and Single AZ 2 deployment types.

1.16.0 (2020-03-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.15.0 (2020-02-24)
------------------

* Feature - Announcing persistent file systems for Amazon FSx for Lustre that are ideal for longer-term storage and workloads, and a new generation of scratch file systems that offer higher burst throughput for spiky workloads.

1.14.0 (2019-12-23)
------------------

* Feature - This release adds a new family of APIs (create-data-repository-task, describe-data-repository-task, and cancel-data-repository-task) that allow users to perform operations between their file system and its linked data repository.

1.13.0 (2019-11-20)
------------------

* Feature - Announcing a Multi-AZ deployment type for Amazon FSx for Windows File Server, providing fully-managed Windows file storage with high availability and redundancy across multiple AWS Availability Zones.

1.12.0 (2019-10-23)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.11.0 (2019-07-25)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.10.0 (2019-07-01)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.9.0 (2019-06-24)
------------------

* Feature - Starting today, you can join your Amazon FSx for Windows File Server file systems to your organization's self-managed Microsoft Active Directory while creating the file system. You can also perform in-place updates of file systems to keep your Active Directory configuration up to date.

1.8.0 (2019-06-17)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.7.0 (2019-05-21)
------------------

* Feature - API update.

1.6.0 (2019-05-15)
------------------

* Feature - API update.

1.5.0 (2019-05-14)
------------------

* Feature - API update.

1.4.0 (2019-03-21)
------------------

* Feature - API update.

1.3.0 (2019-03-18)
------------------

* Feature - API update.

1.2.0 (2019-03-14)
------------------

* Feature - API update.

1.1.0 (2019-02-06)
------------------

* Feature - API update.

1.0.0 (2018-11-28)
------------------

* Feature - Initial release of `aws-sdk-fsx`.
