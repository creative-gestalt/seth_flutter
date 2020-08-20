import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:kt_dart/collection.dart';
import 'package:seth_flutter/domain/search/search.dart';
import 'package:seth_flutter/domain/search/search_failure.dart';
import 'package:seth_flutter/domain/search/value_objects.dart';

abstract class ISearchRepository {
  Future<Either<SearchFailure, KtList<Search>>> fetchResults({
    @required SearchInput search,
  });
}
