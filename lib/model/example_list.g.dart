// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleList _$ExampleListFromJson(Map<String, dynamic> json) => ExampleList(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$ExampleListToJson(ExampleList instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };