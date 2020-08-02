import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:seth_flutter/domain/exercises/i_exercises.dart';
import 'package:sqflite/sqflite.dart';

part 'moor_database.g.dart';

FutureOr<void> _restoreDatabaseAsset(File file) async {
  final String dbDirectory = await getDatabasesPath();
  final String path = join(dbDirectory, "seth.db");

  final ByteData data = await rootBundle.load(join("lib/infrastructure/core/assets", "seth_data.db"));
  final List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  await File(path).writeAsBytes(bytes);
}

@UseMoor(tables: [Exercises])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(creator: _restoreDatabaseAsset, path: 'seth.db', logStatements: true));

  @override
  int get schemaVersion => 1;
}
