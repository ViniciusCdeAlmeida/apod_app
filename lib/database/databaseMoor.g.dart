// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'databaseMoor.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ApodDBData extends DataClass implements Insertable<ApodDBData> {
  final String date;
  final String explanation;
  final String hdurl;
  final String mediaType;
  final String serviceVersion;
  final String url;
  final String title;
  ApodDBData(
      {this.date,
      this.explanation,
      this.hdurl,
      this.mediaType,
      this.serviceVersion,
      this.url,
      this.title});
  factory ApodDBData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return ApodDBData(
      date: stringType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      explanation: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}explanation']),
      hdurl:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}hdurl']),
      mediaType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}media_type']),
      serviceVersion: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}service_version']),
      url: stringType.mapFromDatabaseResponse(data['${effectivePrefix}url']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<String>(date);
    }
    if (!nullToAbsent || explanation != null) {
      map['explanation'] = Variable<String>(explanation);
    }
    if (!nullToAbsent || hdurl != null) {
      map['hdurl'] = Variable<String>(hdurl);
    }
    if (!nullToAbsent || mediaType != null) {
      map['media_type'] = Variable<String>(mediaType);
    }
    if (!nullToAbsent || serviceVersion != null) {
      map['service_version'] = Variable<String>(serviceVersion);
    }
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    return map;
  }

  ApodDBCompanion toCompanion(bool nullToAbsent) {
    return ApodDBCompanion(
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      explanation: explanation == null && nullToAbsent
          ? const Value.absent()
          : Value(explanation),
      hdurl:
          hdurl == null && nullToAbsent ? const Value.absent() : Value(hdurl),
      mediaType: mediaType == null && nullToAbsent
          ? const Value.absent()
          : Value(mediaType),
      serviceVersion: serviceVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(serviceVersion),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
    );
  }

  factory ApodDBData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ApodDBData(
      date: serializer.fromJson<String>(json['date']),
      explanation: serializer.fromJson<String>(json['explanation']),
      hdurl: serializer.fromJson<String>(json['hdurl']),
      mediaType: serializer.fromJson<String>(json['mediaType']),
      serviceVersion: serializer.fromJson<String>(json['serviceVersion']),
      url: serializer.fromJson<String>(json['url']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<String>(date),
      'explanation': serializer.toJson<String>(explanation),
      'hdurl': serializer.toJson<String>(hdurl),
      'mediaType': serializer.toJson<String>(mediaType),
      'serviceVersion': serializer.toJson<String>(serviceVersion),
      'url': serializer.toJson<String>(url),
      'title': serializer.toJson<String>(title),
    };
  }

  ApodDBData copyWith(
          {String date,
          String explanation,
          String hdurl,
          String mediaType,
          String serviceVersion,
          String url,
          String title}) =>
      ApodDBData(
        date: date ?? this.date,
        explanation: explanation ?? this.explanation,
        hdurl: hdurl ?? this.hdurl,
        mediaType: mediaType ?? this.mediaType,
        serviceVersion: serviceVersion ?? this.serviceVersion,
        url: url ?? this.url,
        title: title ?? this.title,
      );
  @override
  String toString() {
    return (StringBuffer('ApodDBData(')
          ..write('date: $date, ')
          ..write('explanation: $explanation, ')
          ..write('hdurl: $hdurl, ')
          ..write('mediaType: $mediaType, ')
          ..write('serviceVersion: $serviceVersion, ')
          ..write('url: $url, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      date.hashCode,
      $mrjc(
          explanation.hashCode,
          $mrjc(
              hdurl.hashCode,
              $mrjc(
                  mediaType.hashCode,
                  $mrjc(serviceVersion.hashCode,
                      $mrjc(url.hashCode, title.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ApodDBData &&
          other.date == this.date &&
          other.explanation == this.explanation &&
          other.hdurl == this.hdurl &&
          other.mediaType == this.mediaType &&
          other.serviceVersion == this.serviceVersion &&
          other.url == this.url &&
          other.title == this.title);
}

class ApodDBCompanion extends UpdateCompanion<ApodDBData> {
  final Value<String> date;
  final Value<String> explanation;
  final Value<String> hdurl;
  final Value<String> mediaType;
  final Value<String> serviceVersion;
  final Value<String> url;
  final Value<String> title;
  const ApodDBCompanion({
    this.date = const Value.absent(),
    this.explanation = const Value.absent(),
    this.hdurl = const Value.absent(),
    this.mediaType = const Value.absent(),
    this.serviceVersion = const Value.absent(),
    this.url = const Value.absent(),
    this.title = const Value.absent(),
  });
  ApodDBCompanion.insert({
    this.date = const Value.absent(),
    this.explanation = const Value.absent(),
    this.hdurl = const Value.absent(),
    this.mediaType = const Value.absent(),
    this.serviceVersion = const Value.absent(),
    this.url = const Value.absent(),
    this.title = const Value.absent(),
  });
  static Insertable<ApodDBData> custom({
    Expression<String> date,
    Expression<String> explanation,
    Expression<String> hdurl,
    Expression<String> mediaType,
    Expression<String> serviceVersion,
    Expression<String> url,
    Expression<String> title,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (explanation != null) 'explanation': explanation,
      if (hdurl != null) 'hdurl': hdurl,
      if (mediaType != null) 'media_type': mediaType,
      if (serviceVersion != null) 'service_version': serviceVersion,
      if (url != null) 'url': url,
      if (title != null) 'title': title,
    });
  }

  ApodDBCompanion copyWith(
      {Value<String> date,
      Value<String> explanation,
      Value<String> hdurl,
      Value<String> mediaType,
      Value<String> serviceVersion,
      Value<String> url,
      Value<String> title}) {
    return ApodDBCompanion(
      date: date ?? this.date,
      explanation: explanation ?? this.explanation,
      hdurl: hdurl ?? this.hdurl,
      mediaType: mediaType ?? this.mediaType,
      serviceVersion: serviceVersion ?? this.serviceVersion,
      url: url ?? this.url,
      title: title ?? this.title,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (explanation.present) {
      map['explanation'] = Variable<String>(explanation.value);
    }
    if (hdurl.present) {
      map['hdurl'] = Variable<String>(hdurl.value);
    }
    if (mediaType.present) {
      map['media_type'] = Variable<String>(mediaType.value);
    }
    if (serviceVersion.present) {
      map['service_version'] = Variable<String>(serviceVersion.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ApodDBCompanion(')
          ..write('date: $date, ')
          ..write('explanation: $explanation, ')
          ..write('hdurl: $hdurl, ')
          ..write('mediaType: $mediaType, ')
          ..write('serviceVersion: $serviceVersion, ')
          ..write('url: $url, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }
}

class $ApodDBTable extends ApodDB with TableInfo<$ApodDBTable, ApodDBData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ApodDBTable(this._db, [this._alias]);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedTextColumn _date;
  @override
  GeneratedTextColumn get date => _date ??= _constructDate();
  GeneratedTextColumn _constructDate() {
    return GeneratedTextColumn(
      'date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _explanationMeta =
      const VerificationMeta('explanation');
  GeneratedTextColumn _explanation;
  @override
  GeneratedTextColumn get explanation =>
      _explanation ??= _constructExplanation();
  GeneratedTextColumn _constructExplanation() {
    return GeneratedTextColumn(
      'explanation',
      $tableName,
      true,
    );
  }

  final VerificationMeta _hdurlMeta = const VerificationMeta('hdurl');
  GeneratedTextColumn _hdurl;
  @override
  GeneratedTextColumn get hdurl => _hdurl ??= _constructHdurl();
  GeneratedTextColumn _constructHdurl() {
    return GeneratedTextColumn(
      'hdurl',
      $tableName,
      true,
    );
  }

  final VerificationMeta _mediaTypeMeta = const VerificationMeta('mediaType');
  GeneratedTextColumn _mediaType;
  @override
  GeneratedTextColumn get mediaType => _mediaType ??= _constructMediaType();
  GeneratedTextColumn _constructMediaType() {
    return GeneratedTextColumn(
      'media_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _serviceVersionMeta =
      const VerificationMeta('serviceVersion');
  GeneratedTextColumn _serviceVersion;
  @override
  GeneratedTextColumn get serviceVersion =>
      _serviceVersion ??= _constructServiceVersion();
  GeneratedTextColumn _constructServiceVersion() {
    return GeneratedTextColumn(
      'service_version',
      $tableName,
      true,
    );
  }

  final VerificationMeta _urlMeta = const VerificationMeta('url');
  GeneratedTextColumn _url;
  @override
  GeneratedTextColumn get url => _url ??= _constructUrl();
  GeneratedTextColumn _constructUrl() {
    return GeneratedTextColumn(
      'url',
      $tableName,
      true,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [date, explanation, hdurl, mediaType, serviceVersion, url, title];
  @override
  $ApodDBTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'apod_d_b';
  @override
  final String actualTableName = 'apod_d_b';
  @override
  VerificationContext validateIntegrity(Insertable<ApodDBData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date'], _dateMeta));
    }
    if (data.containsKey('explanation')) {
      context.handle(
          _explanationMeta,
          explanation.isAcceptableOrUnknown(
              data['explanation'], _explanationMeta));
    }
    if (data.containsKey('hdurl')) {
      context.handle(
          _hdurlMeta, hdurl.isAcceptableOrUnknown(data['hdurl'], _hdurlMeta));
    }
    if (data.containsKey('media_type')) {
      context.handle(_mediaTypeMeta,
          mediaType.isAcceptableOrUnknown(data['media_type'], _mediaTypeMeta));
    }
    if (data.containsKey('service_version')) {
      context.handle(
          _serviceVersionMeta,
          serviceVersion.isAcceptableOrUnknown(
              data['service_version'], _serviceVersionMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url'], _urlMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ApodDBData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ApodDBData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ApodDBTable createAlias(String alias) {
    return $ApodDBTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ApodDBTable _apodDB;
  $ApodDBTable get apodDB => _apodDB ??= $ApodDBTable(this);
  ApodDao _apodDao;
  ApodDao get apodDao => _apodDao ??= ApodDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [apodDB];
}
