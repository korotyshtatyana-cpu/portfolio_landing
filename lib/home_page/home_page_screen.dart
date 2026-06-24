import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/home_page_bloc.dart';

import 'home_page_content.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageBloc>(
      create: (BuildContext context) {
        return HomePageBloc();
      },
      child: const HomePageContent(),
    );
  }
}
