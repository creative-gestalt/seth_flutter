import 'package:moor_flutter/moor_flutter.dart';

class Exercises extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get direction => text()();
  TextColumn get book => text()();
  BoolColumn get favorite => boolean().withDefault(const Constant(false))();
}
