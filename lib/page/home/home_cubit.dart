import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial(0));

  Future<void> updatePage(int page) async {
    emit(HomeInitial(page));
  }
}
