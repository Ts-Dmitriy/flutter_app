import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()

class Profile {
  final int userId;
  final int id;
  final String title;
  final String body;

  Profile(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}