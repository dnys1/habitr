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
  );
}

Map<String, dynamic> _$S3ObjectToJson(S3Object instance) => <String, dynamic>{
      'bucket': instance.bucket,
      'region': instance.region,
      'key': instance.key,
    };
