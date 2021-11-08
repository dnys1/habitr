// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_exists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserExistsRequest _$UserExistsRequestFromJson(Map<String, dynamic> json) =>
    UserExistsRequest(
      json['username'] as String,
    );

Map<String, dynamic> _$UserExistsRequestToJson(UserExistsRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
    };

UserExistsResponse _$UserExistsResponseFromJson(Map<String, dynamic> json) =>
    UserExistsResponse(
      exists: json['exists'] as bool,
    );

Map<String, dynamic> _$UserExistsResponseToJson(UserExistsResponse instance) =>
    <String, dynamic>{
      'exists': instance.exists,
    };
