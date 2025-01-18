import 'package:flutter/material.dart';
import 'package:technical_challenge_v2/features/detail_information/views/detail_information_view.dart';
import 'package:technical_challenge_v2/features/information/views/information_view.dart';

class AppRouter {
  static const String information = '/';
  static const String detail = '/detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case information:
        return MaterialPageRoute(builder: (_) => InformationView());
      case detail:
        final id = settings.arguments as int;
        return MaterialPageRoute(
          builder: (_) => DetailInformationView(id: id),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Ruta no encontrada'),
            ),
          ),
        );
    }
  }
}