import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_challenge_v2/config/app_router.dart';
import 'package:technical_challenge_v2/features/detail_information/view_models/detail_information_view_model.dart';
import 'package:technical_challenge_v2/features/information/view_models/information_view_model.dart';

void main() {
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => InformationViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => DetailInformationViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: AppRouter.information,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
