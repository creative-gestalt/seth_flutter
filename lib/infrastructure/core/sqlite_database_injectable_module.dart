import 'package:injectable/injectable.dart';
import 'package:seth_flutter/infrastructure/core/sqlite_database.dart';

@module
abstract class SqliteInjectableModule {
  @lazySingleton
  SqliteDatabase get sqliteDatabase => SqliteDatabase.instance;
}
