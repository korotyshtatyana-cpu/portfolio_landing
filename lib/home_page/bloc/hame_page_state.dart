part of 'home_page_bloc.dart';

enum HomePageStatus { initial, loading, success, failure }

class HomePageState extends Equatable {
  final HomePageStatus status;

  const HomePageState({this.status = HomePageStatus.initial});

  HomePageState copyWith({HomePageStatus? status}) {
    return HomePageState(status: status ?? this.status);
  }

  @override
  List<Object?> get props => <Object?>[status];
}
