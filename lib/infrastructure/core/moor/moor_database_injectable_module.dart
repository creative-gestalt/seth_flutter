import 'package:injectable/injectable.dart';
import 'package:seth_flutter/infrastructure/core/moor/moor_database.dart';

@module
abstract class MoorDatabaseInjectableModule {
  @lazySingleton
  AppDatabase get appDatabase => AppDatabase();
}
