// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VoteResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoteResult _$VoteResultFromJson(Map<String, dynamic> json) {
  return VoteResult(
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    habit: Habit.fromJson(json['habit'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VoteResultToJson(VoteResult instance) =>
    <String, dynamic>{
      'user': instance.user,
      'habit': instance.habit,
    };
