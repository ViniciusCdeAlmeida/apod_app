import 'package:json_annotation/json_annotation.dart';

part 'apod.g.dart';

@JsonSerializable()
class Apod {
  String date;
  String explanation;
  String mediaType;
  String serviceVersion;
  String title;
  String url;

  Apod({
    this.date,
    this.explanation,
    this.mediaType,
    this.serviceVersion,
    this.title,
    this.url,
  });

  factory Apod.fromJson(Map<String, dynamic> json) => _$ApodFromJson(json);

  Map<String, dynamic> toJson() => _$ApodToJson(this);
}
