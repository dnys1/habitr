/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'S3Object.g.dart';

enum AccessLevel { guest, private, protected }

@JsonSerializable()
class S3Object {
  final String bucket;
  final String region;
  final String key;
  final AccessLevel? accessLevel;
  final String? cognitoId;

  const S3Object(
    this.bucket,
    this.region,
    this.key, {
    this.accessLevel,
    this.cognitoId,
  });

  factory S3Object.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectFromJson(json);

  Map<String, dynamic> toJson() => _$S3ObjectToJson(this);

  S3Object copyWith({String? cognitoId}) {
    return S3Object(
      bucket,
      region,
      key,
      accessLevel: accessLevel,
      cognitoId: cognitoId ?? this.cognitoId,
    );
  }
}
