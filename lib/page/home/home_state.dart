part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {
  HomeInitial(this.page);

  final int page;
}
