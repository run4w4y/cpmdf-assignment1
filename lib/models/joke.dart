import "package:json_annotation/json_annotation.dart";

part "joke.g.dart";

@JsonSerializable()
class Joke {
  final List<String> categories;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'icon_url')
  final String iconUrl;

  final String id;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  final String url;

  final String value;

  Joke(
      {required this.categories,
      required this.createdAt,
      required this.iconUrl,
      required this.id,
      required this.updatedAt,
      required this.url,
      required this.value});

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);

  Map<String, dynamic> toJson() => _$JokeToJson(this);
}
