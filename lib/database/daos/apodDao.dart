import 'package:apod_app/database/databaseMoor.dart';
import 'package:apod_app/database/tables/apod.dart';
import 'package:apod_app/helpers/apod.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'apodDao.g.dart';

//DAO to retrieve informantion from saved data
@UseDao(tables: [ApodDB])
class ApodDao extends DatabaseAccessor<AppDatabase> with _$ApodDaoMixin {
  final AppDatabase db;

  ApodDao(this.db) : super(db);

  Future<List<ApodDBData>> getApods() => (select(db.apodDB).get());

  Future<void> insertApod(Apod apod) async {
    into(db.apodDB).insert(
      ApodDBCompanion(
        date: Value(apod.date),
        url: Value(apod.url),
        explanation: Value(apod.explanation),
        title: Value(apod.title),
        mediaType: Value(apod.media_type),
        serviceVersion: Value(apod.service_version),
      ),
    );
  }
}
