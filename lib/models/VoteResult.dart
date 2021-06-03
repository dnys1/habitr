import 'package:habitr/models/Habit.dart';
import 'package:habitr/models/User.dart';
import 'package:json_annotation/json_annotation.dart';

part 'VoteResult.g.dart';

@JsonSerializable()
class VoteResult {
  final User user;
  final Habit habit;

  const VoteResult({required this.user, required this.habit});

  factory VoteResult.fromJson(Map<String, dynamic> json) =>
      _$VoteResultFromJson(json);

  Map<String, dynamic> toJson() => _$VoteResultToJson(this);
}
