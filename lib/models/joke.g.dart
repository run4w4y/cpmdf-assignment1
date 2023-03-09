// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Joke _$JokeFromJson(Map<String, dynamic> json) => Joke(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['created_at'] as String),
      iconUrl: json['icon_url'] as String,
      id: json['id'] as String,
      updatedAt: DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$JokeToJson(Joke instance) => <String, dynamic>{
      'categories': instance.categories,
      'created_at': instance.createdAt.toIso8601String(),
      'icon_url': instance.iconUrl,
      'id': instance.id,
      'updated_at': instance.updatedAt.toIso8601String(),
      'url': instance.url,
      'value': instance.value,
    };
