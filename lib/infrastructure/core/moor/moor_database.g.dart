// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Exercise extends DataClass implements Insertable<Exercise> {
  final int id;
  final String name;
  final String direction;
  final String book;
  final bool favorite;
  Exercise(
      {@required this.id,
      @required this.name,
      @required this.direction,
      @required this.book,
      @required this.favorite});
  factory Exercise.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Exercise(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      direction: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}direction']),
      book: stringType.mapFromDatabaseResponse(data['${effectivePrefix}book']),
      favorite:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}favorite']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || direction != null) {
      map['direction'] = Variable<String>(direction);
    }
    if (!nullToAbsent || book != null) {
      map['book'] = Variable<String>(book);
    }
    if (!nullToAbsent || favorite != null) {
      map['favorite'] = Variable<bool>(favorite);
    }
    return map;
  }

  ExercisesCompanion toCompanion(bool nullToAbsent) {
    return ExercisesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      direction: direction == null && nullToAbsent
          ? const Value.absent()
          : Value(direction),
      book: book == null && nullToAbsent ? const Value.absent() : Value(book),
      favorite: favorite == null && nullToAbsent
          ? const Value.absent()
          : Value(favorite),
    );
  }

  factory Exercise.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Exercise(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      direction: serializer.fromJson<String>(json['direction']),
      book: serializer.fromJson<String>(json['book']),
      favorite: serializer.fromJson<bool>(json['favorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'direction': serializer.toJson<String>(direction),
      'book': serializer.toJson<String>(book),
      'favorite': serializer.toJson<bool>(favorite),
    };
  }

  Exercise copyWith(
          {int id,
          String name,
          String direction,
          String book,
          bool favorite}) =>
      Exercise(
        id: id ?? this.id,
        name: name ?? this.name,
        direction: direction ?? this.direction,
        book: book ?? this.book,
        favorite: favorite ?? this.favorite,
      );
  @override
  String toString() {
    return (StringBuffer('Exercise(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('direction: $direction, ')
          ..write('book: $book, ')
          ..write('favorite: $favorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(name.hashCode,
          $mrjc(direction.hashCode, $mrjc(book.hashCode, favorite.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Exercise &&
          other.id == this.id &&
          other.name == this.name &&
          other.direction == this.direction &&
          other.book == this.book &&
          other.favorite == this.favorite);
}

class ExercisesCompanion extends UpdateCompanion<Exercise> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> direction;
  final Value<String> book;
  final Value<bool> favorite;
  const ExercisesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.direction = const Value.absent(),
    this.book = const Value.absent(),
    this.favorite = const Value.absent(),
  });
  ExercisesCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required String direction,
    @required String book,
    this.favorite = const Value.absent(),
  })  : name = Value(name),
        direction = Value(direction),
        book = Value(book);
  static Insertable<Exercise> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> direction,
    Expression<String> book,
    Expression<bool> favorite,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (direction != null) 'direction': direction,
      if (book != null) 'book': book,
      if (favorite != null) 'favorite': favorite,
    });
  }

  ExercisesCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> direction,
      Value<String> book,
      Value<bool> favorite}) {
    return ExercisesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      direction: direction ?? this.direction,
      book: book ?? this.book,
      favorite: favorite ?? this.favorite,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (direction.present) {
      map['direction'] = Variable<String>(direction.value);
    }
    if (book.present) {
      map['book'] = Variable<String>(book.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<bool>(favorite.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExercisesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('direction: $direction, ')
          ..write('book: $book, ')
          ..write('favorite: $favorite')
          ..write(')'))
        .toString();
  }
}

class $ExercisesTable extends Exercises
    with TableInfo<$ExercisesTable, Exercise> {
  final GeneratedDatabase _db;
  final String _alias;
  $ExercisesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _directionMeta = const VerificationMeta('direction');
  GeneratedTextColumn _direction;
  @override
  GeneratedTextColumn get direction => _direction ??= _constructDirection();
  GeneratedTextColumn _constructDirection() {
    return GeneratedTextColumn(
      'direction',
      $tableName,
      false,
    );
  }

  final VerificationMeta _bookMeta = const VerificationMeta('book');
  GeneratedTextColumn _book;
  @override
  GeneratedTextColumn get book => _book ??= _constructBook();
  GeneratedTextColumn _constructBook() {
    return GeneratedTextColumn(
      'book',
      $tableName,
      false,
    );
  }

  final VerificationMeta _favoriteMeta = const VerificationMeta('favorite');
  GeneratedBoolColumn _favorite;
  @override
  GeneratedBoolColumn get favorite => _favorite ??= _constructFavorite();
  GeneratedBoolColumn _constructFavorite() {
    return GeneratedBoolColumn('favorite', $tableName, false,
        defaultValue: const Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, direction, book, favorite];
  @override
  $ExercisesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'exercises';
  @override
  final String actualTableName = 'exercises';
  @override
  VerificationContext validateIntegrity(Insertable<Exercise> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('direction')) {
      context.handle(_directionMeta,
          direction.isAcceptableOrUnknown(data['direction'], _directionMeta));
    } else if (isInserting) {
      context.missing(_directionMeta);
    }
    if (data.containsKey('book')) {
      context.handle(
          _bookMeta, book.isAcceptableOrUnknown(data['book'], _bookMeta));
    } else if (isInserting) {
      context.missing(_bookMeta);
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite'], _favoriteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Exercise map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Exercise.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ExercisesTable createAlias(String alias) {
    return $ExercisesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ExercisesTable _exercises;
  $ExercisesTable get exercises => _exercises ??= $ExercisesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [exercises];
}
