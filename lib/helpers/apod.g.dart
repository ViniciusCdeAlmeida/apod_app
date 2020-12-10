// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apod _$ApodFromJson(Map<String, dynamic> json) {
  return Apod(
    date: json['date'] as String,
    explanation: json['explanation'] as String,
    mediaType: json['mediaType'] as String,
    serviceVersion: json['serviceVersion'] as String,
    title: json['title'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$ApodToJson(Apod instance) => <String, dynamic>{
      'date': instance.date,
      'explanation': instance.explanation,
      'mediaType': instance.mediaType,
      'serviceVersion': instance.serviceVersion,
      'title': instance.title,
      'url': instance.url,
    };
