// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'S3Object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3Object _$S3ObjectFromJson(Map<String, dynamic> json) => S3Object(
      json['bucket'] as String,
      json['region'] as String,
      json['key'] as String,
      accessLevel:
          $enumDecodeNullable(_$AccessLevelEnumMap, json['accessLevel']),
      cognitoId: json['cognitoId'] as String?,
    );

Map<String, dynamic> _$S3ObjectToJson(S3Object instance) => <String, dynamic>{
      'bucket': instance.bucket,
      'region': instance.region,
      'key': instance.key,
      'accessLevel': _$AccessLevelEnumMap[instance.accessLevel],
      'cognitoId': instance.cognitoId,
    };

const _$AccessLevelEnumMap = {
  AccessLevel.guest: 'guest',
  AccessLevel.private: 'private',
  AccessLevel.protected: 'protected',
};
