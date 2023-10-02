import 'package:flutter/material.dart';
import 'package:getx_learn/bottomsheet.dart';
import 'package:getx_learn/dailogbox.dart';
import 'package:getx_learn/home.dart';
import 'package:getx_learn/navigation.dart';
import 'package:getx_learn/next_screen.dart';
import 'package:getx_learn/route_navigation.dart';
import 'package:getx_learn/routes/routes.dart';
import 'package:getx_learn/snackbar.dart';
import 'package:getx_learn/state_managment.dart';
import 'package:getx_learn/unique_id.dart';

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
        home: UniqueId(),
        routes: {
          //"/": (context) => const SplashScreen(),
          MyRoutes.snackbarroute: (context) => const SnackbarWidget(),
          MyRoutes.dialogboxroute: (context) => const DialogboxWidget(),
          MyRoutes.bottomsheetroute: (context) => const BottomsheetWidget(),
          MyRoutes.navigation: (context) => const NavigationWidget(),
          MyRoutes.homeroute: (context) => const Home(),
          MyRoutes.routenavigation: (context) => const Navigationroute(),
        });
  }
}

//////video 12 pachho jovo 