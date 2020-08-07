import 'package:seth_flutter/infrastructure/core/search/seth_query.dart';

class SethSearch {

  static SethSearch get instance => SethSearch();

  SethQuery resultCollection() =>
    SethQuery(this);
}
