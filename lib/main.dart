import 'package:erc_test/screen/home_screen/home_screen.dart';
import 'package:erc_test/utils/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
final navigatorKey = GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context,orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              navigatorKey: navigatorKey,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const HomeScreen(),
            );
          }
        );
      }
    );
  }
}
