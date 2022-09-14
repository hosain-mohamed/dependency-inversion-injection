import 'package:dependency/services/api_service/api_repository.dart';

class ClassicApi extends ApiReposiotry {
  @override
  Future getData() async {
    await Future.delayed(Duration(seconds: 2));
    print("Data is Gotten");
  }
}
