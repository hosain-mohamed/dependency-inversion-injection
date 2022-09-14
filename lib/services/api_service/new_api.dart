import 'package:dependency/services/api_service/api_repository.dart';

class NewApi extends ApiReposiotry {
  @override
  Future getData() async {
    await Future.delayed(Duration(milliseconds: 500));
    print("Data is Gotten");
  }
}
