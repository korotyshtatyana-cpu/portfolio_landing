import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'hame_page_state.dart';
part 'home_page_event.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState>
    with WidgetsBindingObserver {
  HomePageBloc() : super(const HomePageState()) {
    on<LoadData>(_onLoadData);

    add(const LoadData());
  }

  Future<void> _onLoadData(LoadData event, Emitter<HomePageState> emit) async {
    emit(state.copyWith(status: HomePageStatus.success));
  }
}
