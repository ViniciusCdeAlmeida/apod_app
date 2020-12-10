import 'dart:io';
import 'package:apod_app/database/daos/apodDao.dart';
import 'package:apod_app/database/tables/apod.dart';
import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart' show getDatabasesPath;
import 'package:moor/moor.dart';
import 'package:moor/ffi.dart';

part 'databaseMoor.g.dart';

//Configurations for Moor database
@UseMoor(
  tables: [
    ApodDB,
  ],
  daos: [
    ApodDao,
  ],
)
// _$AppDatabase is the name of the generated class
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(
          (LazyDatabase(
            () async {
              final dbFolder = await getDatabasesPath();
              final file = File(p.join(dbFolder, 'db.sqlite'));
              return VmDatabase(file);
            },
          )),
        );

  // Bump this when changing tables and columns.
  // Migrations will be covered in the next part.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) {
          return m.createAll();
        },
      );

  void deleteTable(TableInfo table) => delete(table).go();
}
