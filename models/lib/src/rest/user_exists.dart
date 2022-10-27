import 'package:json_annotation/json_annotation.dart';

part 'user_exists.g.dart';

@JsonSerializable()
class UserExistsRequest {
  const UserExistsRequest(this.username);

  factory UserExistsRequest.fromJson(Map<String, dynamic> json) =>
      _$UserExistsRequestFromJson(json);

  final String username;

  Map<String, dynamic> toJson() => _$UserExistsRequestToJson(this);
}

@JsonSerializable()
class UserExistsResponse {
  const UserExistsResponse({required this.exists});

  factory UserExistsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserExistsResponseFromJson(json);

  final bool exists;

  Map<String, dynamic> toJson() => _$UserExistsResponseToJson(this);
}
