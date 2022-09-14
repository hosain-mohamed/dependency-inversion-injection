import 'package:bloc/bloc.dart';
import 'package:dependency/services/api_service/api_repository.dart';
import 'package:dependency/services/api_service/classic_api.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

// High Level module
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ApiReposiotry apiReposiotry;
  HomeBloc(this.apiReposiotry) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      if (event is GetHomeData) {
        print("Loading Data");
        emit(HomeLoading());
        await apiReposiotry.getData();
        emit(HomeSucceed());
      }
    });
  }
}
