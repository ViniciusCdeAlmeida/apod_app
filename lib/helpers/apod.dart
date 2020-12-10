import 'package:apod_app/database/databaseMoor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apod.g.dart';

//Model for APOD and serialized
@JsonSerializable()
class Apod {
  String date;
  String explanation;
  // ignore: non_constant_identifier_names
  String media_type;
  // ignore: non_constant_identifier_names
  String service_version;
  String title;
  String url;

  Apod({
    this.date,
    this.explanation,
    // ignore: non_constant_identifier_names
    this.media_type,
    // ignore: non_constant_identifier_names
    this.service_version,
    this.title,
    this.url,
  });

  factory Apod.fromJson(Map<String, dynamic> json) => _$ApodFromJson(json);

  Map<String, dynamic> toJson() => _$ApodToJson(this);
}

//Helper to serialize the list from database

List<Apod> helperApod(List<ApodDBData> listApod) {
  if (listApod != null) {
    return List<Apod>.from(
      (listApod).map(
        (item) => Apod(
            date: item.date,
            url: item.url,
            explanation: item.explanation,
            media_type: item.mediaType,
            service_version: item.serviceVersion,
            title: item.title),
      ),
    );
  } else
    return null;
}
