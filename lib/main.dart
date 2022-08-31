import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'auth/mainpage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(bodySmall: TextStyle(fontSize: 5.0)),
        ),
        home: mainPage(),
      );
}
