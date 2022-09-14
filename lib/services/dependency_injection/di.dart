import 'package:dependency/services/api_service/api_repository.dart';
import 'package:dependency/services/api_service/new_api.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDepedencies() {
  getIt.registerFactory<ApiReposiotry>(() => NewApi());
}
