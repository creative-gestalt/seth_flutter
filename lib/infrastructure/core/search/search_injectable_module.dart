import 'package:injectable/injectable.dart';
import 'package:seth_flutter/infrastructure/core/search/seth_search.dart';

@module
abstract class SearchInjectableModule {
  @lazySingleton
  SethSearch get sethSearch => SethSearch.instance;
}
