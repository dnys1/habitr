// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthInFlow _$AuthInFlowFromJson(Map<String, dynamic> json) {
  return AuthInFlow(
    _$enumDecode(_$AuthScreenEnumMap, json['screen']),
    username: json['username'] as String?,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AuthInFlowToJson(AuthInFlow instance) =>
    <String, dynamic>{
      'screen': _$AuthScreenEnumMap[instance.screen],
      'user': instance.user,
      'username': instance.username,
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

const _$AuthScreenEnumMap = {
  AuthScreen.signup: 'signup',
  AuthScreen.login: 'login',
  AuthScreen.verify: 'verify',
  AuthScreen.addImage: 'addImage',
};
