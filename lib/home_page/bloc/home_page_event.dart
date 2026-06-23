part of 'home_page_bloc.dart';

abstract class HomePageEvent {
  const HomePageEvent();
}

class LoadData extends HomePageEvent {
  const LoadData();
}