// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'S3Object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3Object _$S3ObjectFromJson(Map<String, dynamic> json) {
  return S3Object(
    json['bucket'] as String,
    json['region'] as String,
    json['key'] as String,
    accessLevel:
        _$enumDecodeNullable(_$AccessLevelEnumMap, json['accessLevel']),
    cognitoId: json['cognitoId'] as String?,
  );
}

Map<String, dynamic> _$S3ObjectToJson(S3Object instance) => <String, dynamic>{
      'bucket': instance.bucket,
      'region': instance.region,
      'key': instance.key,
      'accessLevel': _$AccessLevelEnumMap[instance.accessLevel],
      'cognitoId': instance.cognitoId,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$AccessLevelEnumMap = {
  AccessLevel.guest: 'guest',
  AccessLevel.private: 'private',
  AccessLevel.protected: 'protected',
};
