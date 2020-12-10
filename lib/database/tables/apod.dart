import 'package:moor/moor.dart';

class ApodDB extends Table {
  TextColumn get date => text().nullable()();
  TextColumn get explanation => text().nullable()();
  TextColumn get hdurl => text().nullable()();
  TextColumn get mediaType => text().nullable()();
  TextColumn get serviceVersion => text().nullable()();
  TextColumn get url => text().nullable()();
  TextColumn get title => text().nullable()();
}
