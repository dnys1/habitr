// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthInFlow _$AuthInFlowFromJson(Map<String, dynamic> json) => AuthInFlow(
      $enumDecode(_$AuthScreenEnumMap, json['screen']),
      username: json['username'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthInFlowToJson(AuthInFlow instance) =>
    <String, dynamic>{
      'screen': _$AuthScreenEnumMap[instance.screen],
      'user': instance.user,
      'username': instance.username,
    };

const _$AuthScreenEnumMap = {
  AuthScreen.signup: 'signup',
  AuthScreen.login: 'login',
  AuthScreen.verify: 'verify',
  AuthScreen.addImage: 'addImage',
};
