import 'package:bloc_bottomnav_bar/Business_Logic/bloc/landing_bloc.dart';
import 'package:bloc_bottomnav_bar/Presentation/Screen/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  final LandingBloc LandingPageBloc = LandingBloc();
  Route<dynamic> generatedRoute(RouteSettings settings) {
    final argument = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider<LandingBloc>.value(
                  value: LandingPageBloc,
                  child: LandingPage(),
                ));
      default:
        return errorRoute();
    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Text('Error'),
      );
    });
  }
}
