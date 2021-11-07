import 'package:json_annotation/json_annotation.dart';

part 'user_exists.g.dart';

@JsonSerializable()
class UserExistsRequest {
  final String username;

  const UserExistsRequest(this.username);

  factory UserExistsRequest.fromJson(Map<String, dynamic> json) =>
      _$UserExistsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserExistsRequestToJson(this);
}

@JsonSerializable()
class UserExistsResponse {
  final bool exists;

  const UserExistsResponse({required this.exists});

  factory UserExistsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserExistsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserExistsResponseToJson(this);
}
