import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:seth_flutter/src/models/exercise_model.dart';
import 'package:seth_flutter/src/models/practice_model.dart';
import 'package:seth_flutter/src/models/quote_model.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
  static Database _database;

  Future<Database> get database async {
    if(_database != null) return _database;

    _database = await initDb();
    return _database;
  }

  initDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "seth.db");

    ByteData data = await rootBundle.load(join("lib/src/assets", "seth_data.db"));
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await new File(path).writeAsBytes(bytes);

    var theDb = await openDatabase(path, version: 1);
    return theDb;
  }

  // Exercise Table
  Future<List<Exercise>> getExercises() async {
    final Database dbClient = await database;
    final List<Map<String, dynamic>> maps = await dbClient.query('exercises');
    return List.generate(maps.length, (index) {
      return Exercise(
        id: maps[index]['id'],
        name: maps[index]['name'],
        directions: maps[index]['directions'],
        book: maps[index]['book'],
      );
    });
  }

  Future<Exercise> getDirectionsById(int id) async {
    final Database dbClient = await database;
    final List<Map<String, dynamic>> maps = await dbClient.query(
        'exercises',
        where: "id = ?",
        whereArgs: [id]
    );
    return maps.isNotEmpty ? Exercise.fromDb(maps.first) : Null;
  }

  // Practice Table
  Future<List<Practice>> getPractice() async {
    final Database dbClient = await database;
    final List<Map<String, dynamic>> maps = await dbClient.query('practice');
    return List.generate(maps.length, (index) {
      return Practice(
        id: maps[index]['id'],
        name: maps[index]['name'],
        directions: maps[index]['directions'],
        book: maps[index]['book'],
      );
    });
  }

  Future<Practice> getPracticeById(int id) async {
    final Database dbClient = await database;
    final List<Map<String, dynamic>> maps = await dbClient.query(
        'practice',
        where: "id = ?",
        whereArgs: [id],
    );
    return maps.isNotEmpty ? Practice.fromDb(maps.first) : Null;
  }

  // Saved Table
  Future<List<Quote>> getQuotes() async {
    final Database dbClient = await database;
    final List<Map<String, dynamic>> maps = await dbClient.query('saved');
    return List.generate(maps.length, (index) {
      return Quote(
        id: maps[index]['id'],
        quote: maps[index]['quote'],
        book: maps[index]['book'],
      );
    });
  }

  Future<void> insertQuote(Quote quote) async {
    final Database dbClient = await database;
    await dbClient.insert(
      'saved',
      quote.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
