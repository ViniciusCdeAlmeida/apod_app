// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apod _$ApodFromJson(Map<String, dynamic> json) {
  return Apod(
    date: json['date'] as String,
    explanation: json['explanation'] as String,
    media_type: json['media_type'] as String,
    service_version: json['service_version'] as String,
    title: json['title'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$ApodToJson(Apod instance) => <String, dynamic>{
      'date': instance.date,
      'explanation': instance.explanation,
      'media_type': instance.media_type,
      'service_version': instance.service_version,
      'title': instance.title,
      'url': instance.url,
    };
