import 'package:injectable/injectable.dart';
import 'package:seth_flutter/infrastructure/search/search_repository.dart';

@module
abstract class SearchInjectableModule {
  @lazySingleton
  SearchRepository get searchRepo => SearchRepository();
}
