// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms-2016-10-24.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppSummary _$AppSummaryFromJson(Map<String, dynamic> json) {
  return AppSummary(
    appId: json['appId'] as String,
    creationTime: unixTimestampFromJson(json['creationTime']),
    description: json['description'] as String,
    lastModified: unixTimestampFromJson(json['lastModified']),
    latestReplicationTime: unixTimestampFromJson(json['latestReplicationTime']),
    launchDetails: json['launchDetails'] == null
        ? null
        : LaunchDetails.fromJson(json['launchDetails'] as Map<String, dynamic>),
    launchStatus:
        _$enumDecodeNullable(_$AppLaunchStatusEnumMap, json['launchStatus']),
    launchStatusMessage: json['launchStatusMessage'] as String,
    name: json['name'] as String,
    replicationStatus: _$enumDecodeNullable(
        _$AppReplicationStatusEnumMap, json['replicationStatus']),
    replicationStatusMessage: json['replicationStatusMessage'] as String,
    roleName: json['roleName'] as String,
    status: _$enumDecodeNullable(_$AppStatusEnumMap, json['status']),
    statusMessage: json['statusMessage'] as String,
    totalServerGroups: json['totalServerGroups'] as int,
    totalServers: json['totalServers'] as int,
  );
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$AppLaunchStatusEnumMap = {
  AppLaunchStatus.readyForConfiguration: 'READY_FOR_CONFIGURATION',
  AppLaunchStatus.configurationInProgress: 'CONFIGURATION_IN_PROGRESS',
  AppLaunchStatus.configurationInvalid: 'CONFIGURATION_INVALID',
  AppLaunchStatus.readyForLaunch: 'READY_FOR_LAUNCH',
  AppLaunchStatus.validationInProgress: 'VALIDATION_IN_PROGRESS',
  AppLaunchStatus.launchPending: 'LAUNCH_PENDING',
  AppLaunchStatus.launchInProgress: 'LAUNCH_IN_PROGRESS',
  AppLaunchStatus.launched: 'LAUNCHED',
  AppLaunchStatus.deltaLaunchInProgress: 'DELTA_LAUNCH_IN_PROGRESS',
  AppLaunchStatus.deltaLaunchFailed: 'DELTA_LAUNCH_FAILED',
  AppLaunchStatus.launchFailed: 'LAUNCH_FAILED',
  AppLaunchStatus.terminateInProgress: 'TERMINATE_IN_PROGRESS',
  AppLaunchStatus.terminateFailed: 'TERMINATE_FAILED',
  AppLaunchStatus.terminated: 'TERMINATED',
};

const _$AppReplicationStatusEnumMap = {
  AppReplicationStatus.readyForConfiguration: 'READY_FOR_CONFIGURATION',
  AppReplicationStatus.configurationInProgress: 'CONFIGURATION_IN_PROGRESS',
  AppReplicationStatus.configurationInvalid: 'CONFIGURATION_INVALID',
  AppReplicationStatus.readyForReplication: 'READY_FOR_REPLICATION',
  AppReplicationStatus.validationInProgress: 'VALIDATION_IN_PROGRESS',
  AppReplicationStatus.replicationPending: 'REPLICATION_PENDING',
  AppReplicationStatus.replicationInProgress: 'REPLICATION_IN_PROGRESS',
  AppReplicationStatus.replicated: 'REPLICATED',
  AppReplicationStatus.deltaReplicationInProgress:
      'DELTA_REPLICATION_IN_PROGRESS',
  AppReplicationStatus.deltaReplicated: 'DELTA_REPLICATED',
  AppReplicationStatus.deltaReplicationFailed: 'DELTA_REPLICATION_FAILED',
  AppReplicationStatus.replicationFailed: 'REPLICATION_FAILED',
  AppReplicationStatus.replicationStopping: 'REPLICATION_STOPPING',
  AppReplicationStatus.replicationStopFailed: 'REPLICATION_STOP_FAILED',
  AppReplicationStatus.replicationStopped: 'REPLICATION_STOPPED',
};

const _$AppStatusEnumMap = {
  AppStatus.creating: 'CREATING',
  AppStatus.active: 'ACTIVE',
  AppStatus.updating: 'UPDATING',
  AppStatus.deleting: 'DELETING',
  AppStatus.deleted: 'DELETED',
  AppStatus.deleteFailed: 'DELETE_FAILED',
};

Connector _$ConnectorFromJson(Map<String, dynamic> json) {
  return Connector(
    associatedOn: unixTimestampFromJson(json['associatedOn']),
    capabilityList:
        (json['capabilityList'] as List)?.map((e) => e as String)?.toList(),
    connectorId: json['connectorId'] as String,
    ipAddress: json['ipAddress'] as String,
    macAddress: json['macAddress'] as String,
    status: _$enumDecodeNullable(_$ConnectorStatusEnumMap, json['status']),
    version: json['version'] as String,
    vmManagerId: json['vmManagerId'] as String,
    vmManagerName: json['vmManagerName'] as String,
    vmManagerType:
        _$enumDecodeNullable(_$VmManagerTypeEnumMap, json['vmManagerType']),
  );
}

const _$ConnectorStatusEnumMap = {
  ConnectorStatus.healthy: 'HEALTHY',
  ConnectorStatus.unhealthy: 'UNHEALTHY',
};

const _$VmManagerTypeEnumMap = {
  VmManagerType.vsphere: 'VSPHERE',
  VmManagerType.scvmm: 'SCVMM',
  VmManagerType.hypervManager: 'HYPERV-MANAGER',
};

CreateAppResponse _$CreateAppResponseFromJson(Map<String, dynamic> json) {
  return CreateAppResponse(
    appSummary: json['appSummary'] == null
        ? null
        : AppSummary.fromJson(json['appSummary'] as Map<String, dynamic>),
    serverGroups: (json['serverGroups'] as List)
        ?.map((e) =>
            e == null ? null : ServerGroup.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tags: (json['tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

CreateReplicationJobResponse _$CreateReplicationJobResponseFromJson(
    Map<String, dynamic> json) {
  return CreateReplicationJobResponse(
    replicationJobId: json['replicationJobId'] as String,
  );
}

DeleteAppLaunchConfigurationResponse
    _$DeleteAppLaunchConfigurationResponseFromJson(Map<String, dynamic> json) {
  return DeleteAppLaunchConfigurationResponse();
}

DeleteAppReplicationConfigurationResponse
    _$DeleteAppReplicationConfigurationResponseFromJson(
        Map<String, dynamic> json) {
  return DeleteAppReplicationConfigurationResponse();
}

DeleteAppResponse _$DeleteAppResponseFromJson(Map<String, dynamic> json) {
  return DeleteAppResponse();
}

DeleteReplicationJobResponse _$DeleteReplicationJobResponseFromJson(
    Map<String, dynamic> json) {
  return DeleteReplicationJobResponse();
}

DeleteServerCatalogResponse _$DeleteServerCatalogResponseFromJson(
    Map<String, dynamic> json) {
  return DeleteServerCatalogResponse();
}

DisassociateConnectorResponse _$DisassociateConnectorResponseFromJson(
    Map<String, dynamic> json) {
  return DisassociateConnectorResponse();
}

GenerateChangeSetResponse _$GenerateChangeSetResponseFromJson(
    Map<String, dynamic> json) {
  return GenerateChangeSetResponse(
    s3Location: json['s3Location'] == null
        ? null
        : S3Location.fromJson(json['s3Location'] as Map<String, dynamic>),
  );
}

GenerateTemplateResponse _$GenerateTemplateResponseFromJson(
    Map<String, dynamic> json) {
  return GenerateTemplateResponse(
    s3Location: json['s3Location'] == null
        ? null
        : S3Location.fromJson(json['s3Location'] as Map<String, dynamic>),
  );
}

GetAppLaunchConfigurationResponse _$GetAppLaunchConfigurationResponseFromJson(
    Map<String, dynamic> json) {
  return GetAppLaunchConfigurationResponse(
    appId: json['appId'] as String,
    roleName: json['roleName'] as String,
    serverGroupLaunchConfigurations:
        (json['serverGroupLaunchConfigurations'] as List)
            ?.map((e) => e == null
                ? null
                : ServerGroupLaunchConfiguration.fromJson(
                    e as Map<String, dynamic>))
            ?.toList(),
  );
}

GetAppReplicationConfigurationResponse
    _$GetAppReplicationConfigurationResponseFromJson(
        Map<String, dynamic> json) {
  return GetAppReplicationConfigurationResponse(
    serverGroupReplicationConfigurations:
        (json['serverGroupReplicationConfigurations'] as List)
            ?.map((e) => e == null
                ? null
                : ServerGroupReplicationConfiguration.fromJson(
                    e as Map<String, dynamic>))
            ?.toList(),
  );
}

GetAppResponse _$GetAppResponseFromJson(Map<String, dynamic> json) {
  return GetAppResponse(
    appSummary: json['appSummary'] == null
        ? null
        : AppSummary.fromJson(json['appSummary'] as Map<String, dynamic>),
    serverGroups: (json['serverGroups'] as List)
        ?.map((e) =>
            e == null ? null : ServerGroup.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tags: (json['tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

GetConnectorsResponse _$GetConnectorsResponseFromJson(
    Map<String, dynamic> json) {
  return GetConnectorsResponse(
    connectorList: (json['connectorList'] as List)
        ?.map((e) =>
            e == null ? null : Connector.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['nextToken'] as String,
  );
}

GetReplicationJobsResponse _$GetReplicationJobsResponseFromJson(
    Map<String, dynamic> json) {
  return GetReplicationJobsResponse(
    nextToken: json['nextToken'] as String,
    replicationJobList: (json['replicationJobList'] as List)
        ?.map((e) => e == null
            ? null
            : ReplicationJob.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

GetReplicationRunsResponse _$GetReplicationRunsResponseFromJson(
    Map<String, dynamic> json) {
  return GetReplicationRunsResponse(
    nextToken: json['nextToken'] as String,
    replicationJob: json['replicationJob'] == null
        ? null
        : ReplicationJob.fromJson(
            json['replicationJob'] as Map<String, dynamic>),
    replicationRunList: (json['replicationRunList'] as List)
        ?.map((e) => e == null
            ? null
            : ReplicationRun.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

GetServersResponse _$GetServersResponseFromJson(Map<String, dynamic> json) {
  return GetServersResponse(
    lastModifiedOn: unixTimestampFromJson(json['lastModifiedOn']),
    nextToken: json['nextToken'] as String,
    serverCatalogStatus: _$enumDecodeNullable(
        _$ServerCatalogStatusEnumMap, json['serverCatalogStatus']),
    serverList: (json['serverList'] as List)
        ?.map((e) =>
            e == null ? null : Server.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

const _$ServerCatalogStatusEnumMap = {
  ServerCatalogStatus.notImported: 'NOT_IMPORTED',
  ServerCatalogStatus.importing: 'IMPORTING',
  ServerCatalogStatus.available: 'AVAILABLE',
  ServerCatalogStatus.deleted: 'DELETED',
  ServerCatalogStatus.expired: 'EXPIRED',
};

ImportServerCatalogResponse _$ImportServerCatalogResponseFromJson(
    Map<String, dynamic> json) {
  return ImportServerCatalogResponse();
}

LaunchAppResponse _$LaunchAppResponseFromJson(Map<String, dynamic> json) {
  return LaunchAppResponse();
}

LaunchDetails _$LaunchDetailsFromJson(Map<String, dynamic> json) {
  return LaunchDetails(
    latestLaunchTime: unixTimestampFromJson(json['latestLaunchTime']),
    stackId: json['stackId'] as String,
    stackName: json['stackName'] as String,
  );
}

ListAppsResponse _$ListAppsResponseFromJson(Map<String, dynamic> json) {
  return ListAppsResponse(
    apps: (json['apps'] as List)
        ?.map((e) =>
            e == null ? null : AppSummary.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['nextToken'] as String,
  );
}

PutAppLaunchConfigurationResponse _$PutAppLaunchConfigurationResponseFromJson(
    Map<String, dynamic> json) {
  return PutAppLaunchConfigurationResponse();
}

PutAppReplicationConfigurationResponse
    _$PutAppReplicationConfigurationResponseFromJson(
        Map<String, dynamic> json) {
  return PutAppReplicationConfigurationResponse();
}

ReplicationJob _$ReplicationJobFromJson(Map<String, dynamic> json) {
  return ReplicationJob(
    description: json['description'] as String,
    encrypted: json['encrypted'] as bool,
    frequency: json['frequency'] as int,
    kmsKeyId: json['kmsKeyId'] as String,
    latestAmiId: json['latestAmiId'] as String,
    licenseType:
        _$enumDecodeNullable(_$LicenseTypeEnumMap, json['licenseType']),
    nextReplicationRunStartTime:
        unixTimestampFromJson(json['nextReplicationRunStartTime']),
    numberOfRecentAmisToKeep: json['numberOfRecentAmisToKeep'] as int,
    replicationJobId: json['replicationJobId'] as String,
    replicationRunList: (json['replicationRunList'] as List)
        ?.map((e) => e == null
            ? null
            : ReplicationRun.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    roleName: json['roleName'] as String,
    runOnce: json['runOnce'] as bool,
    seedReplicationTime: unixTimestampFromJson(json['seedReplicationTime']),
    serverId: json['serverId'] as String,
    serverType: _$enumDecodeNullable(_$ServerTypeEnumMap, json['serverType']),
    state: _$enumDecodeNullable(_$ReplicationJobStateEnumMap, json['state']),
    statusMessage: json['statusMessage'] as String,
    vmServer: json['vmServer'] == null
        ? null
        : VmServer.fromJson(json['vmServer'] as Map<String, dynamic>),
  );
}

const _$LicenseTypeEnumMap = {
  LicenseType.aws: 'AWS',
  LicenseType.byol: 'BYOL',
};

const _$ServerTypeEnumMap = {
  ServerType.virtualMachine: 'VIRTUAL_MACHINE',
};

const _$ReplicationJobStateEnumMap = {
  ReplicationJobState.pending: 'PENDING',
  ReplicationJobState.active: 'ACTIVE',
  ReplicationJobState.failed: 'FAILED',
  ReplicationJobState.deleting: 'DELETING',
  ReplicationJobState.deleted: 'DELETED',
  ReplicationJobState.completed: 'COMPLETED',
  ReplicationJobState.pausedOnFailure: 'PAUSED_ON_FAILURE',
  ReplicationJobState.failing: 'FAILING',
};

ReplicationRun _$ReplicationRunFromJson(Map<String, dynamic> json) {
  return ReplicationRun(
    amiId: json['amiId'] as String,
    completedTime: unixTimestampFromJson(json['completedTime']),
    description: json['description'] as String,
    encrypted: json['encrypted'] as bool,
    kmsKeyId: json['kmsKeyId'] as String,
    replicationRunId: json['replicationRunId'] as String,
    scheduledStartTime: unixTimestampFromJson(json['scheduledStartTime']),
    stageDetails: json['stageDetails'] == null
        ? null
        : ReplicationRunStageDetails.fromJson(
            json['stageDetails'] as Map<String, dynamic>),
    state: _$enumDecodeNullable(_$ReplicationRunStateEnumMap, json['state']),
    statusMessage: json['statusMessage'] as String,
    type: _$enumDecodeNullable(_$ReplicationRunTypeEnumMap, json['type']),
  );
}

const _$ReplicationRunStateEnumMap = {
  ReplicationRunState.pending: 'PENDING',
  ReplicationRunState.missed: 'MISSED',
  ReplicationRunState.active: 'ACTIVE',
  ReplicationRunState.failed: 'FAILED',
  ReplicationRunState.completed: 'COMPLETED',
  ReplicationRunState.deleting: 'DELETING',
  ReplicationRunState.deleted: 'DELETED',
};

const _$ReplicationRunTypeEnumMap = {
  ReplicationRunType.onDemand: 'ON_DEMAND',
  ReplicationRunType.automatic: 'AUTOMATIC',
};

ReplicationRunStageDetails _$ReplicationRunStageDetailsFromJson(
    Map<String, dynamic> json) {
  return ReplicationRunStageDetails(
    stage: json['stage'] as String,
    stageProgress: json['stageProgress'] as String,
  );
}

S3Location _$S3LocationFromJson(Map<String, dynamic> json) {
  return S3Location(
    bucket: json['bucket'] as String,
    key: json['key'] as String,
  );
}

Map<String, dynamic> _$S3LocationToJson(S3Location instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bucket', instance.bucket);
  writeNotNull('key', instance.key);
  return val;
}

Server _$ServerFromJson(Map<String, dynamic> json) {
  return Server(
    replicationJobId: json['replicationJobId'] as String,
    replicationJobTerminated: json['replicationJobTerminated'] as bool,
    serverId: json['serverId'] as String,
    serverType: _$enumDecodeNullable(_$ServerTypeEnumMap, json['serverType']),
    vmServer: json['vmServer'] == null
        ? null
        : VmServer.fromJson(json['vmServer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ServerToJson(Server instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('replicationJobId', instance.replicationJobId);
  writeNotNull('replicationJobTerminated', instance.replicationJobTerminated);
  writeNotNull('serverId', instance.serverId);
  writeNotNull('serverType', _$ServerTypeEnumMap[instance.serverType]);
  writeNotNull('vmServer', instance.vmServer?.toJson());
  return val;
}

ServerGroup _$ServerGroupFromJson(Map<String, dynamic> json) {
  return ServerGroup(
    name: json['name'] as String,
    serverGroupId: json['serverGroupId'] as String,
    serverList: (json['serverList'] as List)
        ?.map((e) =>
            e == null ? null : Server.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ServerGroupToJson(ServerGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('serverGroupId', instance.serverGroupId);
  writeNotNull(
      'serverList', instance.serverList?.map((e) => e?.toJson())?.toList());
  return val;
}

ServerGroupLaunchConfiguration _$ServerGroupLaunchConfigurationFromJson(
    Map<String, dynamic> json) {
  return ServerGroupLaunchConfiguration(
    launchOrder: json['launchOrder'] as int,
    serverGroupId: json['serverGroupId'] as String,
    serverLaunchConfigurations: (json['serverLaunchConfigurations'] as List)
        ?.map((e) => e == null
            ? null
            : ServerLaunchConfiguration.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ServerGroupLaunchConfigurationToJson(
    ServerGroupLaunchConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('launchOrder', instance.launchOrder);
  writeNotNull('serverGroupId', instance.serverGroupId);
  writeNotNull('serverLaunchConfigurations',
      instance.serverLaunchConfigurations?.map((e) => e?.toJson())?.toList());
  return val;
}

ServerGroupReplicationConfiguration
    _$ServerGroupReplicationConfigurationFromJson(Map<String, dynamic> json) {
  return ServerGroupReplicationConfiguration(
    serverGroupId: json['serverGroupId'] as String,
    serverReplicationConfigurations:
        (json['serverReplicationConfigurations'] as List)
            ?.map((e) => e == null
                ? null
                : ServerReplicationConfiguration.fromJson(
                    e as Map<String, dynamic>))
            ?.toList(),
  );
}

Map<String, dynamic> _$ServerGroupReplicationConfigurationToJson(
    ServerGroupReplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('serverGroupId', instance.serverGroupId);
  writeNotNull(
      'serverReplicationConfigurations',
      instance.serverReplicationConfigurations
          ?.map((e) => e?.toJson())
          ?.toList());
  return val;
}

ServerLaunchConfiguration _$ServerLaunchConfigurationFromJson(
    Map<String, dynamic> json) {
  return ServerLaunchConfiguration(
    associatePublicIpAddress: json['associatePublicIpAddress'] as bool,
    ec2KeyName: json['ec2KeyName'] as String,
    instanceType: json['instanceType'] as String,
    logicalId: json['logicalId'] as String,
    securityGroup: json['securityGroup'] as String,
    server: json['server'] == null
        ? null
        : Server.fromJson(json['server'] as Map<String, dynamic>),
    subnet: json['subnet'] as String,
    userData: json['userData'] == null
        ? null
        : UserData.fromJson(json['userData'] as Map<String, dynamic>),
    vpc: json['vpc'] as String,
  );
}

Map<String, dynamic> _$ServerLaunchConfigurationToJson(
    ServerLaunchConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('associatePublicIpAddress', instance.associatePublicIpAddress);
  writeNotNull('ec2KeyName', instance.ec2KeyName);
  writeNotNull('instanceType', instance.instanceType);
  writeNotNull('logicalId', instance.logicalId);
  writeNotNull('securityGroup', instance.securityGroup);
  writeNotNull('server', instance.server?.toJson());
  writeNotNull('subnet', instance.subnet);
  writeNotNull('userData', instance.userData?.toJson());
  writeNotNull('vpc', instance.vpc);
  return val;
}

ServerReplicationConfiguration _$ServerReplicationConfigurationFromJson(
    Map<String, dynamic> json) {
  return ServerReplicationConfiguration(
    server: json['server'] == null
        ? null
        : Server.fromJson(json['server'] as Map<String, dynamic>),
    serverReplicationParameters: json['serverReplicationParameters'] == null
        ? null
        : ServerReplicationParameters.fromJson(
            json['serverReplicationParameters'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ServerReplicationConfigurationToJson(
    ServerReplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('server', instance.server?.toJson());
  writeNotNull('serverReplicationParameters',
      instance.serverReplicationParameters?.toJson());
  return val;
}

ServerReplicationParameters _$ServerReplicationParametersFromJson(
    Map<String, dynamic> json) {
  return ServerReplicationParameters(
    encrypted: json['encrypted'] as bool,
    frequency: json['frequency'] as int,
    kmsKeyId: json['kmsKeyId'] as String,
    licenseType:
        _$enumDecodeNullable(_$LicenseTypeEnumMap, json['licenseType']),
    numberOfRecentAmisToKeep: json['numberOfRecentAmisToKeep'] as int,
    runOnce: json['runOnce'] as bool,
    seedTime: unixTimestampFromJson(json['seedTime']),
  );
}

Map<String, dynamic> _$ServerReplicationParametersToJson(
    ServerReplicationParameters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('encrypted', instance.encrypted);
  writeNotNull('frequency', instance.frequency);
  writeNotNull('kmsKeyId', instance.kmsKeyId);
  writeNotNull('licenseType', _$LicenseTypeEnumMap[instance.licenseType]);
  writeNotNull('numberOfRecentAmisToKeep', instance.numberOfRecentAmisToKeep);
  writeNotNull('runOnce', instance.runOnce);
  writeNotNull('seedTime', unixTimestampToJson(instance.seedTime));
  return val;
}

StartAppReplicationResponse _$StartAppReplicationResponseFromJson(
    Map<String, dynamic> json) {
  return StartAppReplicationResponse();
}

StartOnDemandReplicationRunResponse
    _$StartOnDemandReplicationRunResponseFromJson(Map<String, dynamic> json) {
  return StartOnDemandReplicationRunResponse(
    replicationRunId: json['replicationRunId'] as String,
  );
}

StopAppReplicationResponse _$StopAppReplicationResponseFromJson(
    Map<String, dynamic> json) {
  return StopAppReplicationResponse();
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
    key: json['key'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$TagToJson(Tag instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  return val;
}

TerminateAppResponse _$TerminateAppResponseFromJson(Map<String, dynamic> json) {
  return TerminateAppResponse();
}

UpdateAppResponse _$UpdateAppResponseFromJson(Map<String, dynamic> json) {
  return UpdateAppResponse(
    appSummary: json['appSummary'] == null
        ? null
        : AppSummary.fromJson(json['appSummary'] as Map<String, dynamic>),
    serverGroups: (json['serverGroups'] as List)
        ?.map((e) =>
            e == null ? null : ServerGroup.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tags: (json['tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

UpdateReplicationJobResponse _$UpdateReplicationJobResponseFromJson(
    Map<String, dynamic> json) {
  return UpdateReplicationJobResponse();
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return UserData(
    s3Location: json['s3Location'] == null
        ? null
        : S3Location.fromJson(json['s3Location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserDataToJson(UserData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('s3Location', instance.s3Location?.toJson());
  return val;
}

VmServer _$VmServerFromJson(Map<String, dynamic> json) {
  return VmServer(
    vmManagerName: json['vmManagerName'] as String,
    vmManagerType:
        _$enumDecodeNullable(_$VmManagerTypeEnumMap, json['vmManagerType']),
    vmName: json['vmName'] as String,
    vmPath: json['vmPath'] as String,
    vmServerAddress: json['vmServerAddress'] == null
        ? null
        : VmServerAddress.fromJson(
            json['vmServerAddress'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VmServerToJson(VmServer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vmManagerName', instance.vmManagerName);
  writeNotNull('vmManagerType', _$VmManagerTypeEnumMap[instance.vmManagerType]);
  writeNotNull('vmName', instance.vmName);
  writeNotNull('vmPath', instance.vmPath);
  writeNotNull('vmServerAddress', instance.vmServerAddress?.toJson());
  return val;
}

VmServerAddress _$VmServerAddressFromJson(Map<String, dynamic> json) {
  return VmServerAddress(
    vmId: json['vmId'] as String,
    vmManagerId: json['vmManagerId'] as String,
  );
}

Map<String, dynamic> _$VmServerAddressToJson(VmServerAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vmId', instance.vmId);
  writeNotNull('vmManagerId', instance.vmManagerId);
  return val;
}
