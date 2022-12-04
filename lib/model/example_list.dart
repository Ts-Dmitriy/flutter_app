
import 'package:json_annotation/json_annotation.dart';

part 'example_list.g.dart';

@JsonSerializable()

class ExampleList {
  final int userId;
  final int id;
  final String title;
  final String body;

  ExampleList(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory ExampleList.fromJson(Map<String, dynamic> json) =>
      _$ExampleListFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleListToJson(this);
}