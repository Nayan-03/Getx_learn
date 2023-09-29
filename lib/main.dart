import 'package:flutter/material.dart';
import 'package:getx_learn/routes/routes.dart';
import 'package:getx_learn/snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Snackbar',
        theme: ThemeData(
            primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
        //home: const SnackbarWidget(),
        routes: {
          //"/": (context) => const SplashScreen(),
          MyRoutes.snackbarroute: (context) => const SnackbarWidget(),
        });
  }
}
